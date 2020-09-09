# This message is to describe the overall vehicle status
# The message includes both vehicle positioning info and Chassis info

# Header
std_msgs/Header header

# vehicle position
geometry_msgs/Pose pose
geometry_msgs/Vector3 linear_velocity
geometry_msgs/Vector3 linear_acceleration
geometry_msgs/Vector3 angular_velocity

# vehicle chassis status
LeadgenChassis chassis_status
