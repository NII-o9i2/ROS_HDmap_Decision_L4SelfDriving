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
#include <Python.h>
//QTextStream cout(stdout, QIODevice::WriteOnly);
//QTextStream cin(stdin, QIODevice::ReadOnly);


//LIST_LANEMODELS* temp_listlanes_;

class S_POINT{
  public:
    double x;
    double y;
    double z;
};
class S_STOPLINE
{
  public:
    int16_t offset;
    int16_t latOffset;
    int16_t type;
    int16_t validnum;
    std::vector<S_POINT> point;
};
class S_LINE
{
  public:
    int16_t type;      
    std::vector<int16_t> lineType;
    std::vector<S_POINT> point; //一段点
    int16_t pointnum;
};

class S_LANEINFO
{
  public:
    S_LINE centerline;
    S_LINE leftboundry;
    S_LINE rightboundry;
    double width;
    bool IsPartofRouting;
    int16_t type;
    int16_t direction;
    int16_t id;
    double length;
};

class HDmapInfo
{
  public:
    int16_t time;
    int16_t isValidlane;
    int16_t positionstate;
    int16_t curlane;
    std::vector<S_LANEINFO> laneinfo;
    double speedlim;
    S_STOPLINE stopline;
    bool istunnel;
    int16_t nextlaneCH;
};


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
    //bool Getlocation(void);
    bool GetLaneInfo(void);
    bool FirisGetlocation_ =  false;
    S_POINT wgs2xy(const me_double *fLongitude,const me_double *fLatitude);
    Av3hr_e eRet_;
    Av3hr_pathid_t iPathId_ = 0;
    Av3hr_offset_t iLoadOffsetS_ = 0;
    Av3hr_offset_t iLoadOffsetE_ = iLoadOffsetS_ + INT_MAX;
    Av3hr_offset_t iEndOffset_ = 0;
    Av3hr_eMapStatus eStatus_;
    Av3hr_Position position_;
    S_POINT position_xy_;
    S_POINT firstPoint_;
    Av3hr_LaneInfo pLane_;          //当前车道
    me_bool bIsStart_ = false;
    struct UDPStruct HDmapDatas_;   //用于UDP通信
    LIST_LANEMODELS listLanes_;
    LIST_NODES listNodes_;
    HDmapInfo HDmapinfo_;
    int16_t IdMoveNum = 0;
    LIST_SPEEDLIMITS pListSpeedLimits_;
    me_bool bTunnel_;
    Av3hr_offset_t iStopOffset_;
    Av3hr_LocationObject pStopline_;
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
    PyObject *pModule;
    PyObject *pDict;
    PyObject *pClass_xy_transform;
    PyObject *pInstance_xy_transform;
    PyObject *pResult;
    PyObject *pArg;
    PyObject *pFunc;
};

