# This message is to describe the chassis status of the vehicle
# The information usually comes from CAN bus of the vehicle interface

# Header
std_msgs/Header header

# constant definitions
# auto_mode is bit-wise marker
# +-------------------+-------------------+
# | H3 | H2 | H1 | H0 | L3 | L2 | L1 | L0 |
# +-------------------+-------------------+
# |  Steering modes   |   speed modes     |
# +-------------------+-------------------+
uint8 AUTO_MODE_OFF = 0
uint8 AUTO_MODE_SYSTEM_ON = 1 # bit L0
uint8 AUTO_MODE_BRAKE_ON = 2 # bit L1
uint8 AUTO_MODE_THROTTLE_ON = 4  # bit L2
uint8 AUTO_MODE_SPEED_ON = 8  # bit L3

uint8 AUTO_MODE_STEER_ON = 16 # bit H0, 0x10
uint8 AUTO_MODE_STEER_POS = 32 # bit H1, 0x20
uint8 AUTO_MODE_STEER_VEL = 64 # bit H2, 0x40
uint8 AUTO_MODE_STEER_TOR = 128 # bit H3, 0x80

# vehicle current mode
uint8 auto_mode

# vehicle current longitude status
float32 speed # in signed [m/s]
float32 acceleration # in signed [m/s^2]
float32 throttle # in [percentage]
float32 brake # brake pressure [MPa]

# gear control is bit-wise marker
# +-------------------+-------------------+
# | H3 | H2 | H1 | H0 | L3 | L2 | L1 | L0 |
# +-------------------+-------------------+
uint8 GEAR_INVALID = 0
uint8 GEAR_P = 1
uint8 GEAR_R = 2
uint8 GEAR_N = 4
uint8 GEAR_D = 8

int8 gear # gear position

# vehicle current steering status
float32 steer_pos # in signed [percentage], positive to left

# other operational status(optional)
float32[] wheel_speed
float32 engine_rpm
float32 odometer
float32 fuel_level
