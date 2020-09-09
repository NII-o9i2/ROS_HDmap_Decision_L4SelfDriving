# This message is to describe a WAYPOINT in the target trajectory

# header
# std_msgs/Header header

# 3D position
geometry_msgs/Point point

# trace info
float64 theta # the heading of the trace at this point
float64 kappa # the curvature of the trace at this point

# SL info
float64 station
float64 lateral

# speed info
float32 speed # in [m/s]
float32 accel # in [m/s^2],(optional)

time time_arrival # the expected arrival time of this point


