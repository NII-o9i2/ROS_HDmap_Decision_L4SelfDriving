#include <fstream>
#include <iomanip>
#include <sys/time.h>
#include "ME_types.h"
#include "av3hr_msgconstants.h"
#include "av3hr_msgdefine.h"

using std::ofstream;
using std::fixed;

void GetMainPathID_datasRecord(ofstream& fout, Av3hr_pathid_t& PathId, struct timeval& tv );

void GetPosition_datasRecord(ofstream& fout, Av3hr_Position& position, struct timeval& tv, unsigned int& counterTemp );

void GetLane_datasRecord(ofstream& fout, LIST_LANEMODELS * pListLanes, struct timeval& tv, unsigned int& counterTemp);

void GetSpeedLimit_datasRecord(ofstream& fout, LIST_SPEEDLIMITS * plistSpeedLimits, struct timeval& tv, unsigned int& counterTemp);

void GetCurrentLane_datasRecord(ofstream& fout, Av3hr_LaneInfo& pLane, struct timeval& tv, unsigned int& counterTemp);

void GetLaneWidth_datasRecord(ofstream& fout, me_int32& laneWidth, struct timeval& tv, unsigned int& counterTemp);

void GetCurvature_datasRecord(ofstream& fout, MAP_OFFSETFLOAT *plistCurvature, struct timeval& tv, unsigned int& counterTemp);

void GetNextRamp_datasRecord(ofstream& fout, Av3hr_offset_t& iOffset, struct timeval& tv, unsigned int& counterTemp);

void GetFormOfWay_datasRecord(ofstream& fout, Av3hr_eFormOfWay& eRoadType, struct timeval& tv, unsigned int& counterTemp);


