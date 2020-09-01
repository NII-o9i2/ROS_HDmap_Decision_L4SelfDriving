#include "API.h"
#include "udp_struct.h"
#include <fstream>
#include <sys/stat.h>
#include <unistd.h>
#include <limits.h>
#include <iomanip>
#include <dirent.h>
#include <sys/time.h>
#include <thread>
//QTextStream cout(stdout, QIODevice::WriteOnly);
//QTextStream cin(stdin, QIODevice::ReadOnly);
class map_server{

public:
    map_server(/* args */);
    ~map_server();

};
class ehr_api
{
public:
    ehr_api();
    ~ehr_api();
    void Destory(void);
    void Process(struct timeval tv);
    Av3hr_e eRet_;
    Av3hr_pathid_t iPathId_ = 0;
    Av3hr_offset_t iLoadOffsetS_ = 0;
    Av3hr_offset_t iLoadOffsetE_ = iLoadOffsetS_ + INT_MAX;
    Av3hr_offset_t iEndOffset_ = 0;
    Av3hr_eMapStatus eStatus_;
    Av3hr_Position position_;
    Av3hr_LaneInfo pLane_;          //当前车道
    me_bool bIsStart_ = false;
    struct UDPStruct HDmapDatas_;   //用于UDP通信
    LIST_LANEMODELS listLanes_;
    LIST_NODES listNodes_;
    //QTextStream cout(stdout, QIODevice::WriteOnly);
    //QTextStream cin(stdin, QIODevice::ReadOnly);
  private:
    ofstream file, fileListLane,fileDebug;
    string hour_tem, minute_tem, second_tem,day_tem,tm_mon;
    string filePath = "LOG/";
    string fileName = "HDmapResult.txt";
    string fileName_Debug = "HDmapDebug.txt"; 
    string fileNameListLane = "HDmapResultLaneList.txt";
    time_t nSeconds;
    struct tm * pTM;

};
