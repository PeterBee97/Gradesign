#!/usr/bin/env python
import rospy
import serial
import time,sys,tty,termios
def readchar():
    fd = sys.stdin.fileno()
    old_settings = termios.tcgetattr(fd)
    try:
        tty.setraw(sys.stdin.fileno())
        ch = sys.stdin.read(1)
    finally:
        termios.tcsetattr(fd, termios.TCSADRAIN, old_settings)
    return ch

def readkey(getchar_fn=None):
    getchar = getchar_fn or readchar
    c1 = getchar()
    if ord(c1) != 0x1b:
        return c1
    c2 = getchar()
    if ord(c2) != 0x5b:
        return c1
    c3 = getchar()
    return chr(0x10 + ord(c3) - 65)

ser=serial.Serial(port='/dev/ttyS1',baudrate=9600,timeout=2)
if not ser.isOpen():
    ser.open()

start_cmd=b'\x03\x01\x01\x05'
stop_cmd=b'\x03\x01\x02\x06'
faultack_cmd=b'\x03\x01\x07\x0B'
setspeedforward_cmd=b'\x07\x06\x0C\x27\x00\x00\x78\x00\xB8'
setspeedbackward_cmd=b'\x07\x06\xF4\xD8\xFF\xFF\x78\x00\x53'

print "Press j to jump,q to quit"
while True:
    c=readkey()
    if c=='s':
        print "start"
        ser.write(start_cmd)
    elif c=='d':
        print "stop"
        ser.write(stop_cmd)
    elif c=='f':
        print "fault ack"
        ser.write(faultack_cmd)
    elif c=='g':
        print "set speed ramp 9996"
        ser.write(setspeedforward_cmd)
    elif c=='h':
        print "set speed ramp -9996"
        ser.write(setspeedbackward_cmd)
    elif c=='j':
        print "jump"
        ser.write(setspeedforward_cmd)
        time.sleep(0.1)
        ser.write(start_cmd)
        time.sleep(0.2)
        ser.write(stop_cmd)
        time.sleep(0.1)
        ser.write(faultack_cmd)
    elif c=='k':
        print "fold"
        ser.write(setspeedbackward_cmd)
        time.sleep(0.1)
        ser.write(start_cmd)
        time.sleep(0.2)
        ser.write(stop_cmd)
        time.sleep(0.1)
        ser.write(faultack_cmd)
    elif c=='q':
        break

ser.close()
