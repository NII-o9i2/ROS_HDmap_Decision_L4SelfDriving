# This message is to describe the target trajectory for the vehicle
# The message is usually sent by planning module and followed by control module

# Header
std_msgs/Header header

# The target trajectory
LeadgenWaypoint[] waypoints

# emergency stop marker
bool estop

# turn light
uint8 turn_light

uint8 NO_TURN_LIGHT = 0
uint8 LEFT_TURN_LIGHT = 1
uint8 RIGHT_TURN_LIGHT = 2
