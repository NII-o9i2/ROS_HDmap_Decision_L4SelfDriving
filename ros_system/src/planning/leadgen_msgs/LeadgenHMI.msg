# This message is to describe decistion and planning message for HMI

# Header
std_msgs/Header header

# lane changing decisions
uint8 lane_decision

# enum for lane decisions
uint8 KEEP_IN_LANE = 0
uint8 MERGE_LEFT_LANE = 1
uint8 MERGE_RIGHT_LANE = 2

# traffic light result
uint8 traffic_light_result

# enum for traffic light result
uint8 TRAFFIC_LIGHT_NA = 0
uint8 TRAFFIC_LIGHT_RED = 1
uint8 TRAFFIC_LIGHT_GREEN = 2

# current lane limit speed
float32 lane_speed_limit # km/h

# lane borders
LeadgenPointArray[] lane_borders

# obstacle output
LeadgenObstacleOutput[] obs_decision_result



