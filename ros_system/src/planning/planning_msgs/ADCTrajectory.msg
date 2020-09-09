Header header
PathPoint[] path_point
float32 dis_to_end
float32 dis_to_cip
bool estop
bool is_replan
uint8 gear_position
uint8 turn_signal
LatencyStats latency_stats
PredictionDebug predict_debug

# Gear Position
uint8 GEAR_NEUTRAL=0
uint8 GEAR_DRIVE=1
uint8 GEAR_REVERSE=2
uint8 GEAR_PARKING=3
uint8 GEAR_INVALID=4

# turn signal state
uint8 TURN_NONE=0
uint8 TURN_LEFT=1
uint8 TURN_RIGHT=2
