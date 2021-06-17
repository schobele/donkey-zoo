MM1_STEERING_MID = 1550
MM1_MAX_FORWARD = 1620  # Max is 2000
MM1_MAX_REVERSE = 1350
MM1_STOPPED_PWM = 1500
MM1_SHOW_STEERING_VALUE = False
MM1_SERIAL_PORT = '/dev/ttyS0'

THROTTLE_FORWARD_PWM = 430      #pwm value for max forward throttle
THROTTLE_STOPPED_PWM = 370      #pwm value for no movement
THROTTLE_REVERSE_PWM = 320      #pwm value for max reverse throttle

DRIVE_TRAIN_TYPE = "MM1"

JOYSTICK_MAX_THROTTLE = 1.0
JOYSTICK_THROTTLE_DIR = -1.0

CONTROLLER_TYPE='ps3'           #(ps3|ps4)
DRIVE_LOOP_HZ = 20

if (CONTROLLER_TYPE=='ps3'):
    JOYSTICK_DEADZONE = 0.1

AUTO_CREATE_NEW_TUB = True

DEFAULT_AI_FRAMEWORK='tensorflow'
MAX_EPOCHS = 40                #how many times to visit all records of your data

HAVE_IMU = False                #when true, this add a Mpu6050 part and records the data. Can be used with a
IMU_SENSOR = 'mpu6050'          # (mpu6050|mpu9250)
IMU_DLP_CONFIG = 2              # Digital Lowpass Filter setting (0:250Hz, 1:184Hz, 2:92Hz, 3:41Hz, 4:20Hz, 5:10Hz, 6:5Hz)
