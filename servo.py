import RPi.GPIO as GPIO
import time
from time import sleep
import sys

# setup RPi
GPIO.setwarnings(True)
servo_pin = 3

GPIO.setmode(GPIO.BOARD)
GPIO.setup(servo_pin,GPIO.OUT)


# Create a PWM object with a frequency of 50 Hz
servo = GPIO.PWM(servo_pin, 50)


servo.start(0)

angle = float(sys.argv[1])



def set_angle(angle):
    duty = angle / 18 + 2
    GPIO.output(servo_pin, True)
    servo.ChangeDutyCycle(duty)
    sleep(.3)
    GPIO.output(servo_pin, False)
    servo.ChangeDutyCycle(0)







set_angle(angle)


servo.stop()
GPIO.cleanup()

