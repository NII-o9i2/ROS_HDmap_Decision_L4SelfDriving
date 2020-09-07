#include <QCoreApplication>
#include <QTextStream>
#include <unistd.h>
#include <limits.h>
#include <iomanip>
#include "API.h"
#include <fstream>
#include <dirent.h>
#include <sys/stat.h>
#include <sys/time.h>
#include <thread>
#include  "udp_struct.h"
//#include <iostream> 

#define OFFSETMAX 10000000
#define out_flag 1
#define debug_out_flag  1
#define out_flag_listLane 1
#define not_out_flag_dots 1
#define listCurvatureOffset 20000 //单位：cm
#define xiaotongfengDebug 1
/*
  Av3hr_pathid_t iPathId = 0;
  Av3hr_offset_t iLoadOffsetS = 0;
  Av3hr_offset_t iLoadOffsetE = iLoadOffsetS + INT_MAX;
  Av3hr_offset_t iEndOffset = 0;
  me_bool bIsStart = false;
  Av3hr_eMapStatus eStatus;
*/
QTextStream cout(stdout, QIODevice::WriteOnly);
QTextStream cin(stdin, QIODevice::ReadOnly);
ofstream file, fileListLane,fileDebug;

LIST_LANEMODELS* temp_listlanes_;
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
    int16_t type;       //centerline = 0;leftboundry = 1;rightboundry = -1
    int16_t lineType;
    std::vector<S_POINT> point; //一段点
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
};

// class ReferenceLinePoint
// {
//   public:
//     float x;
//     float y;
//     float s;
//     float theta;
//     float kappa;
//     float dkappa;
// };
// class StationPoint
// {
//   public:
//     float x;
//     float y;
//     float s;
//     bool IsValid;
// };

class ReferenceLineInfo
{
  public:
    int16_t time;
    int16_t isValidlane;
    int16_t curlane;
    std::vector<S_LANEINFO> laneinfo;
    int16_t pointNum;
    double speedlim;
    bool istunnel;
    int16_t nextlaneCH;

};

class ehr_api
{
  public:
    ehr_api(){
      eRet_ = Av3HR_API_Initialize();
      memset(&HDmapDatas_, 0, sizeof(HDmapDatas_));//initialize 0
    };

    ~ehr_api(){
      Av3HR_API_Destroy();
    };

    void Destory(void){
      Av3HR_API_Destroy();
    };

    void Process(struct timeval tv){
      // 获取主路径编号
      if (Av3HR_IsChanged(eStatus_))
      {
        if (eStatus_ == Av3hr_eMapStatus_Create)
        {
          if (iPathId_ != Av3HR_GetMainPathID())
          {
            iPathId_ = Av3HR_GetMainPathID();//主路径编号
            iEndOffset_ = 0;
            #if out_flag
              file << "mainPathID: " << iPathId_ << " ";
            //file << " second = " << tv->tv_sec << " microsecond = " <<  tv->tv_usec << " counterTemp= " << counterTemp <<endl;
            #endif
            #if debug_out_flag
              cout << "mainPathID: " << iPathId_ << endl;
            #endif
          }
          bIsStart_ = true;
        }
      }
      if (iPathId_ != Av3HR_GetMainPathID())
      {
            iPathId_ = Av3HR_GetMainPathID();
            cout << "mainPathID: " << iPathId_ << endl;
      }
      // 获取当前位置信息
      if ((Av3HR_GetPosition(&position_) == Av3HR_OK))
      {
        HDmapDatas_.PositionOffset = position_.m_iOffset;
        //cout << position_.m_iOffset<< endl;
        //cout <<"currentLane is " <<position_.m_iCurrentLane << endl;
        #if debug_out_flag
          //cout << "position: pathid=" << position_.m_iPathId << " lane=" << (int)position_.m_iCurrentLane
          //<< " m_iTimestamp=" << position_.m_iTimestamp << endl;
        #endif
        #if out_flag
          file <<"position: time=" << position_.m_iTimestamp <<" pathid=" << position_.m_iPathId
          << ", offset=" << position_.m_iOffset << ", lane=" << (int)position_.m_iCurrentLane
          << ", crood=" << setiosflags(ios::fixed) << setprecision(7) << position_.m_stCrd.m_stPoint.fLongitude 
          << "," <<setiosflags(ios::fixed) << setprecision(7) << position_.m_stCrd.m_stPoint.fLatitude << "," 
          << position_.m_stCrd.m_stPoint.fAltitude << ", heading=" << position_.m_fHeading << endl;
          file << " second = " << tv.tv_sec << " microsecond = " <<  tv.tv_usec <<endl;
        #endif
      }
      //当加载的数据小于 1km 时, 重新加载 2km 的数据
      //全局变量,在获取车道线的时候使用
      if(bIsStart_ && (iEndOffset_ < position_.m_iOffset||(iEndOffset_ - position_.m_iOffset) < 20000)) 
      //if (1)
      {
        if(iEndOffset_ > 0)
        {
          #if out_flag
          file << "remainingOffset: " << iEndOffset_ - position_.m_iOffset << endl;
          file << " second = " << tv.tv_sec << " microsecond = " <<  tv.tv_usec <<endl;
          #endif
        }
        // iLoadOffsetS : 需要加载数据的起始 offset 位置
        // iLoadOffsetE : 需要加载数据的结束 offset 位置
        iLoadOffsetS_ = position_.m_iOffset - 50;
        if (iLoadOffsetS_ < 0) {
          iLoadOffsetS_ = 0;
        }
        iLoadOffsetE_ = iLoadOffsetS_ + 30000; // 2km
        iEndOffset_ = iLoadOffsetE_;
        //cout << iLoadOffsetS_ << "  " << iLoadOffsetE_ << endl;
        if (Av3HR_PathOffset(iPathId_, iLoadOffsetS_, iLoadOffsetE_) == Av3HR_OK)
        {
          // 获取车道信息
          // LIST_LANEMODELS listLanes;
          //listLanes_.clear();
          if (Av3HR_GetLane(&listLanes_) == Av3HR_OK)
          {
            #if out_flag
            cout << "numOfLanes: " << listLanes_.size() << endl;//车道是链表(list) vector<Av3hr_LaneMode>

            //temp_listlanes_->assign(listLanes_.begin(),listLanes_.end());
            fileListLane <<"-------------Get car localization Lane info------------------\n";
            for (auto iter = listLanes_.data()->m_mapLaneInfos.begin(); iter != listLanes_.data()->m_mapLaneInfos.end(); iter++)
            {
              fileListLane <<"-------------laneinfo------------------\n";
              fileListLane << "lane info idx_ :"<< (int)iter->first<<endl;
              fileListLane << "\tLaneNumber"<<"\tbIsPartOfCalculatedRoute"<< "\ttype"<< "\t  Direction"<< "\tTransition"<< "\tLength"<< endl;
              fileListLane << "\t"<< (int)iter->second.m_iLaneNumber
                            <<"\t"<< iter->second.m_bIsPartOfCalculatedRoute
                            << "\t"<< iter->second.m_eType
                            << "\t"<< iter->second.m_eDirection
                            << "\t"<< iter->second.m_eTransition
                            << "\t"<< iter->second.m_iLength << endl;  
              fileListLane << "\tCenterline info :\n";
              fileListLane << "\t\tCenterline type"<<"\tLineId"<<endl;
              fileListLane << "\t\t"<<iter->second.m_stCenterline.m_pLineObj.m_eType
                           <<"\t"<<iter->second.m_stCenterline.m_pLineObj.m_iLineId<<endl; 
      
              for (auto ilaneIn = iter->second.m_mapLaneIN.begin(); ilaneIn != iter->second.m_mapLaneIN.end(); ilaneIn++)
              {
                  fileListLane << "\tilaneIn idx_ :"<< (int)ilaneIn->first<<endl;

                  fileListLane << "\t\tLaneNumber"<<"\tbIsPartOfCalculatedRoute"<< "\ttype"<< "\t  Direction"<< "\tTransition"<< "\tLength"<< endl;
                  fileListLane << "\t\t"<< (int)ilaneIn->second.m_iLaneNumber
                                <<"\t\t"<< ilaneIn->second.m_bIsPartOfCalculatedRoute
                                << "\t\t"<< ilaneIn->second.m_eType
                                << "\t\t"<< ilaneIn->second.m_eDirection
                                << "\t\t"<< ilaneIn->second.m_eTransition
                                << "\t\t"<< ilaneIn->second.m_iLength << endl;  
                  fileListLane << "\t\tilaneIn Centerline info :\n";
                  fileListLane << "\t\t\tilaneIn Centerline type"<<"\tLineId"<<endl;
                  fileListLane << "\t\t\t"<<ilaneIn->second.m_stCenterline.m_pLineObj.m_eType
                              <<"\t"<<ilaneIn->second.m_stCenterline.m_pLineObj.m_iLineId<<endl;                   
              }
              for (auto ilaneOut = iter->second.m_mapLaneOUT.begin(); ilaneOut != iter->second.m_mapLaneOUT.end(); ilaneOut++)
              {
                  fileListLane << "\tiilaneOut idx_ :"<< (int)ilaneOut->first<<endl;

                  fileListLane << "\t\tLaneNumber"<<"\tbIsPartOfCalculatedRoute"<< "\ttype"<< "\t  Direction"<< "\tTransition"<< "\tLength"<< endl;
                  fileListLane << "\t\t"<< (int)ilaneOut->second.m_iLaneNumber
                                <<"\t\t"<< ilaneOut->second.m_bIsPartOfCalculatedRoute
                                << "\t\t"<< ilaneOut->second.m_eType
                                << "\t\t"<< ilaneOut->second.m_eDirection
                                << "\t\t"<< ilaneOut->second.m_eTransition
                                << "\t\t"<< ilaneOut->second.m_iLength << endl;  
                  fileListLane << "\t\tilaneOut Centerline info :\n";
                  fileListLane << "\t\t\tilaneOut Centerline type"<<"\tLineId"<<endl;
                  fileListLane << "\t\t\t"<<ilaneOut->second.m_stCenterline.m_pLineObj.m_eType
                              <<"\t"<<ilaneOut->second.m_stCenterline.m_pLineObj.m_iLineId<<endl;                   
              }
              fileListLane <<"-------------laneinfo------------------\n";
              
            }
            fileListLane <<"-------------Get car localization Lane info------------------\n";
            
            //cout << listLanes[0].m_iTotalNumberOfLanes << endl;//测试
            #endif
            
            if(0)
            {
              std::vector<Av3hr_LaneModel>::iterator ite_LaneModel;
              std::map<Av3hr_laneidx_t, Av3hr_LaneInfo>::iterator ite_LaneInfo;
              std::vector< Av3hr_WGS84Point>::iterator ite_Points;


              fileListLane << " second = " << tv.tv_sec << " microsecond = " <<  tv.tv_usec <<endl;
              fileListLane << "laneModelSize= " << listLanes_.size() << endl;
              for(ite_LaneModel = listLanes_.begin(); ite_LaneModel != listLanes_.end(); ++ite_LaneModel)
              {
                fileListLane << "listLaneModel_index= " << ite_LaneModel - listLanes_.begin() << " ";
                fileListLane << "listLaneModel: TotalNum=" << (int)ite_LaneModel->m_iTotalNumberOfLanes << " size=" << ite_LaneModel->m_iSize<<"icounter = "<<ite_LaneModel->m_iCyclicCounter  << endl;
                //cout << "transform";
                for(ite_LaneInfo= ite_LaneModel->m_mapLaneInfos.begin(); ite_LaneInfo!= ite_LaneModel->m_mapLaneInfos.end(); ++ite_LaneInfo)
                {
                  // todo length = 0
                  fileListLane << "laneLength= " << ite_LaneInfo->second.m_iLength << endl;
                  
                  #if not_out_flag_dots
                  fileListLane << "left lane size = " << ite_LaneInfo->second.m_stLeftBoundary.m_pLineGeometry.m_vPoints.size() << endl;
                  fileListLane << "right lane size = " << ite_LaneInfo->second.m_stRightBoundary.m_pLineGeometry.m_vPoints.size() << endl;
                  fileListLane << "Is on routing = "<< ite_LaneInfo->second.m_bIsPartOfCalculatedRoute<<endl;
                  fileListLane << "lane type = "<< ite_LaneInfo->second.m_eType<<endl;
                  //cout << ite_LaneInfo->second.m_eTransition;
                  #else
                  fileListLane << "laneInfo: laneNum=" << (int)ite_LaneInfo->second.m_iLaneNumber << " length=" << ite_LaneInfo->second.m_iLength << endl;
                  fileListLane << "left lane: crood=" << endl;//输出经纬度点
                  for(ite_Points= ite_LaneInfo->second.m_stLeftBoundary.m_pLineGeometry.m_vPoints.begin(); 
                    ite_Points!= ite_LaneInfo->second.m_stLeftBoundary.m_pLineGeometry.m_vPoints.end(); ++ite_Points)
                  {
                    fileListLane << setiosflags(ios::fixed) << setprecision(7) <<ite_Points->m_stPoint.fLongitude << "," 
                      <<setiosflags(ios::fixed) << setprecision(7) << ite_Points->m_stPoint.fLatitude << ";";
                  }
                  fileListLane << "right lane: crood=" << endl;//输出经纬度点
                  for(ite_Points= ite_LaneInfo->second.m_stRightBoundary.m_pLineGeometry.m_vPoints.begin(); 
                    ite_Points!= ite_LaneInfo->second.m_stRightBoundary.m_pLineGeometry.m_vPoints.end(); ++ite_Points)
                  {
                    fileListLane << setiosflags(ios::fixed) << setprecision(7) <<ite_Points->m_stPoint.fLongitude << "," 
                      <<setiosflags(ios::fixed) << setprecision(7) << ite_Points->m_stPoint.fLatitude << ";";
                  }
                  #endif
                }
                //cout<<endl;
              }
            }
          }
        } // end Av3HR_PathOffset

        // // 获取节点信息
        // todo  节点无信息
        /*
        if (Av3HR_GetNode(&listNodes_) == Av3HR_OK)
        {
          #if 1
           cout << "nodeSize: " << listNodes_.size() << endl;
          #endif
          std::vector<Av3hr_NodeArm> ::iterator pathNode_it;
          for (pathNode_it = listNodes_.begin();pathNode_it!=listNodes_.end();pathNode_it++)
          {
            cout<<"cur pathid : "<<pathNode_it->m_iPathId<<" sub pathid :"<<pathNode_it->m_iSubPath<<"probbblity :"<< pathNode_it->m_fProbability<<endl; 
          }
        } 
        */
      }// end if bIsStart_

      //获取当前车道信息
      pLane_.m_mapLaneOUT.clear();
      if (Av3HR_GetCurrentLane(&pLane_) == Av3HR_OK)
      {

        #if out_flag
        Av3hr_laneidx_t iLaneNumber, iLaneNumberLast;
        Av3hr_laneidx_t leftNeighbourLane, rightNeighbourLane;
        iLaneNumberLast = 0;
        iLaneNumber = pLane_.m_iLaneNumber;
        cout << iLaneNumber << " -> : " << endl;
        for(const auto &w :pLane_.m_mapLaneOUT)
          cout << w.second.m_iLaneNumber<< " - "<<endl; 
        if (iLaneNumber != iLaneNumberLast)
        {
          //车道编号从右向左,1开始增加
          std::vector<Av3hr_WGS84Point>::iterator its_WGS84Point_temp;

          file << " second = " << tv.tv_sec << " microsecond = " <<  tv.tv_usec  <<endl;
          file << "current lane: number=" << (int)iLaneNumber << ", type=" << pLane_.m_eType << endl;

          // std::vector<Av3hr_Linear>::iterator its_l;
          file << "left boundary: type=" << pLane_.m_stLeftBoundary.m_pLineObj.m_eType << endl;//中心线,车道线,马路牙子,栅栏等等
          std::vector<Av3hr_Linear>::iterator its_l;
          for( its_l = pLane_.m_stLeftBoundary.m_pLineObj.m_vLinears.begin(); its_l != pLane_.m_stLeftBoundary.m_pLineObj.m_vLinears.end(); ++its_l)
          {
            Av3hr_Linear& linear = (*its_l);
            file << "left boundary: marking=" << linear.m_eMarking << ", color=" << linear.m_eColour << endl;//单虚线,双虚线,单实线等等
          }

          #if not_out_flag_dots
          file << "left lane size = " << pLane_.m_stLeftBoundary.m_pLineGeometry.m_vPoints.size() << endl;
          #else
          file << "left boundary: crood=" << endl;//输出经纬度点
          for( its_WGS84Point_temp=pLane.m_stLeftBoundary.m_pLineGeometry.m_vPoints.begin(); its_WGS84Point_temp!=pLane.m_stLeftBoundary.m_pLineGeometry.m_vPoints.end(); ++its_WGS84Point_temp)
          {
            file << setiosflags(ios::fixed) << setprecision(7) <<its_WGS84Point_temp->m_stPoint.fLongitude << "," 
              <<setiosflags(ios::fixed) << setprecision(7) << its_WGS84Point_temp->m_stPoint.fLatitude << ";";
          }
          file << endl;
          #endif

          std::vector<Av3hr_Linear>::iterator its_r;
          file << "right boundary: type=" << pLane_.m_stRightBoundary.m_pLineObj.m_eType << endl;
          for (its_r = pLane_.m_stRightBoundary.m_pLineObj.m_vLinears.begin(); its_r != pLane_.m_stRightBoundary.m_pLineObj.m_vLinears.end(); ++its_r)
          {
            Av3hr_Linear& linear = (*its_r);
            file << "right boundary: marking=" << linear.m_eMarking << ", color=" << linear.m_eColour << endl;
          }

          #if not_out_flag_dots
          file << "right lane size = " << pLane_.m_stRightBoundary.m_pLineGeometry.m_vPoints.size() << endl;
          #else
          file << "right boundary: crood=" << endl;//输出经纬度点
          for( its_WGS84Point_temp = pLane.m_stRightBoundary.m_pLineGeometry.m_vPoints.begin(); its_WGS84Point_temp != pLane.m_stRightBoundary.m_pLineGeometry.m_vPoints.end(); ++its_WGS84Point_temp)
          {
            file << setiosflags(ios::fixed) << setprecision(7) <<its_WGS84Point_temp->m_stPoint.fLongitude << "," 
              <<setiosflags(ios::fixed) << setprecision(7) << its_WGS84Point_temp->m_stPoint.fLatitude << ";";
          }
          file << endl;
          #endif

          // leftNeighbourLane = iLaneNumber +1;
          // rightNeighbourLane = iLaneNumber-1;
          // file << "left neighbour boundary: crood=" << endl;//输出经纬度点
          // for(its_WGS84Point_temp = listLanes[leftNeighbourLane].m_mapLaneInfos.m_stLeftBoundary.m_pLineGeometry.m_vPoints.begin();
          //   its_WGS84Point_temp != listLanes[leftNeighbourLane].m_mapLaneInfos.m_stLeftBoundary.m_pLineGeometry.m_vPoints.end(); ++its_WGS84Point_temp)
          // {
          //   file << setiosflags(ios::fixed) << setprecision(7) <<its_WGS84Point_temp->m_stPoint.fLongitude << "," 
          //     <<setiosflags(ios::fixed) << setprecision(7) << its_WGS84Point_temp->m_stPoint.fLatitude << ";";
          // }
          // file << endl;

          // file << "right neighbour boundary: crood=" << endl;//输出经纬度点
          // for(its_WGS84Point_temp = listLanes[rightNeighbourLane].m_mapLaneInfos.m_stRightBoundary.m_pLineGeometry.m_vPoints.begin();
          //   its_WGS84Point_temp != listLanes[rightNeighbourLane].m_mapLaneInfos.m_stRightBoundary.m_pLineGeometry.m_vPoints.end(); ++its_WGS84Point_temp)
          // {
          //   point_temp = (*its_WGS84Point_temp);
          //   file << setiosflags(ios::fixed) << setprecision(7) <<its_WGS84Point_temp->m_stPoint.fLongitude << "," 
          //     <<setiosflags(ios::fixed) << setprecision(7) << its_WGS84Point_temp->m_stPoint.fLatitude << ";";
          // }
          // file << endl;

          iLaneNumberLast = iLaneNumber;
        }
        #endif
      }

    };

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
};


void PrintLaneInfo(const LIST_LANEMODELS& listlanes){

  cout <<"-------------Get car localization Lane info------------------\n";
  
  for (auto iter = listlanes.data()->m_mapLaneInfos.begin(); iter != listlanes.data()->m_mapLaneInfos.end(); iter++)
  {
    fileListLane <<"-------------laneinfo------------------\n";
    fileListLane << "lane info idx_ :"<< (int)iter->first<<endl;
    fileListLane << "\tLaneNumber"<<"\tbIsPartOfCalculatedRoute"<< "\ttype"<< "\t  Direction"<< "\tTransition"<< "\tLength"<< endl;
    fileListLane << "\t"<< (int)iter->second.m_iLaneNumber
                  <<"\t"<< iter->second.m_bIsPartOfCalculatedRoute
                  << "\t"<< iter->second.m_eType
                  << "\t"<< iter->second.m_eDirection
                  << "\t"<< iter->second.m_eTransition
                  << "\t"<< iter->second.m_iLength << endl;  
    fileListLane << "\tCenterline info :\n";
    fileListLane << "\t\tCenterline type"<<"\tLineId"<<endl;
    fileListLane << "\t\t"<<iter->second.m_stCenterline.m_pLineObj.m_eType
                  <<"\t"<<iter->second.m_stCenterline.m_pLineObj.m_iLineId<<endl; 

    for (auto ilaneIn = iter->second.m_mapLaneIN.begin(); ilaneIn != iter->second.m_mapLaneIN.end(); ilaneIn++)
    {
        fileListLane << "\tilaneIn idx_ :"<< (int)ilaneIn->first<<endl;

        fileListLane << "\t\tLaneNumber"<<"\tbIsPartOfCalculatedRoute"<< "\ttype"<< "\t  Direction"<< "\tTransition"<< "\tLength"<< endl;
        fileListLane << "\t\t"<< (int)ilaneIn->second.m_iLaneNumber
                      <<"\t\t"<< ilaneIn->second.m_bIsPartOfCalculatedRoute
                      << "\t\t"<< ilaneIn->second.m_eType
                      << "\t\t"<< ilaneIn->second.m_eDirection
                      << "\t\t"<< ilaneIn->second.m_eTransition
                      << "\t\t"<< ilaneIn->second.m_iLength << endl;  
        fileListLane << "\t\tilaneIn Centerline info :\n";
        fileListLane << "\t\t\tilaneIn Centerline type"<<"\tLineId"<<endl;
        fileListLane << "\t\t\t"<<ilaneIn->second.m_stCenterline.m_pLineObj.m_eType
                    <<"\t"<<ilaneIn->second.m_stCenterline.m_pLineObj.m_iLineId<<endl;                   
    }
    for (auto ilaneOut = iter->second.m_mapLaneOUT.begin(); ilaneOut != iter->second.m_mapLaneOUT.end(); ilaneOut++)
    {
        fileListLane << "\tiilaneOut idx_ :"<< (int)ilaneOut->first<<endl;

        fileListLane << "\t\tLaneNumber"<<"\tbIsPartOfCalculatedRoute"<< "\ttype"<< "\t  Direction"<< "\tTransition"<< "\tLength"<< endl;
        fileListLane << "\t\t"<< (int)ilaneOut->second.m_iLaneNumber
                      <<"\t\t"<< ilaneOut->second.m_bIsPartOfCalculatedRoute
                      << "\t\t"<< ilaneOut->second.m_eType
                      << "\t\t"<< ilaneOut->second.m_eDirection
                      << "\t\t"<< ilaneOut->second.m_eTransition
                      << "\t\t"<< ilaneOut->second.m_iLength << endl;  
        fileListLane << "\t\tilaneOut Centerline info :\n";
        fileListLane << "\t\t\tilaneOut Centerline type"<<"\tLineId"<<endl;
        fileListLane << "\t\t\t"<<ilaneOut->second.m_stCenterline.m_pLineObj.m_eType
                    <<"\t"<<ilaneOut->second.m_stCenterline.m_pLineObj.m_iLineId<<endl;                   
    }
    fileListLane <<"-------------laneinfo------------------\n";
    
  }
  fileListLane <<"-------------Get car localization Lane info------------------\n";
}

void PrintLaneInfo(const std::vector<S_LANEINFO>& laneinfo){

  fileListLane <<"-------------Get car localization Lane info------------------\n";
  //遍历每一条lane info
  fileListLane <<"lane list count: "<<laneinfo.size()<<"\n";
  for (size_t i = 0; i < laneinfo.size(); i++)
  {
    fileListLane <<"-------------laneinfo[ "<<i<<" ]------------"<<"\n";
    fileListLane << "\tid"<<"\tIsPartOfRouting"<< "\ttype"<< "\tDirection"<< endl;
    fileListLane << "\t"<< (int)laneinfo[i].id
                  <<"\t\t"<< laneinfo[i].IsPartofRouting
                  << "\t\t"<< laneinfo[i].type
                  << "\t\t"<< laneinfo[i].direction << endl;
    //print point
    fileListLane <<"\tcenterline: "<<"\n";
    for (size_t j = 0; j < laneinfo[i].centerline.point.size(); j++)
    {
      fileListLane <<"\t\tcenterline point : "<<laneinfo[i].centerline.point[j].x
                   <<","<<laneinfo[i].centerline.point[j].y<<","<<laneinfo[i].centerline.point[j].z<<"\n";
    }
    fileListLane <<"\tleftboundry: "<<"\n";
    for (size_t j = 0; j < laneinfo[i].leftboundry.point.size(); j++)
    {
      fileListLane <<"\t\tleftboundry point : "<<laneinfo[i].leftboundry.point[j].x
                   <<","<<laneinfo[i].leftboundry.point[j].y<<","<<laneinfo[i].leftboundry.point[j].z<<"\n";
    }
    fileListLane <<"\trightboundry: "<<"\n";
    for (size_t j = 0; j < laneinfo[i].centerline.point.size(); j++)
    {
      fileListLane <<"\t\trightboundry point : "<<laneinfo[i].centerline.point[j].x
                   <<","<<laneinfo[i].centerline.point[j].y<<","<<laneinfo[i].centerline.point[j].z<<"\n";
    }
    fileListLane <<"-------------laneinfo[ "<<i<<" ]------------"<<"\n";
  }
  fileListLane <<"-------------Get car localization Lane info------------------\n";

  
  // for (auto iter = listlanes->data()->m_mapLaneInfos.begin(); iter != listlanes->data()->m_mapLaneInfos.end(); iter++)
  // {
  //   fileListLane <<"-------------laneinfo------------------\n";
  //   fileListLane << "lane info idx_ :"<< (int)iter->first<<endl;
  //   fileListLane << "\tLaneNumber"<<"\tbIsPartOfCalculatedRoute"<< "\ttype"<< "\t  Direction"<< "\tTransition"<< "\tLength"<< endl;
  //   fileListLane << "\t"<< (int)iter->second.m_iLaneNumber
  //                 <<"\t"<< iter->second.m_bIsPartOfCalculatedRoute
  //                 << "\t"<< iter->second.m_eType
  //                 << "\t"<< iter->second.m_eDirection
  //                 << "\t"<< iter->second.m_eTransition
  //                 << "\t"<< iter->second.m_iLength << endl;  
  //   fileListLane << "\tCenterline info :\n";
  //   fileListLane << "\t\tCenterline type"<<"\tLineId"<<endl;
  //   fileListLane << "\t\t"<<iter->second.m_stCenterline.m_pLineObj.m_eType
  //                 <<"\t"<<iter->second.m_stCenterline.m_pLineObj.m_iLineId<<endl; 

  //   for (auto ilaneIn = iter->second.m_mapLaneIN.begin(); ilaneIn != iter->second.m_mapLaneIN.end(); ilaneIn++)
  //   {
  //       fileListLane << "\tilaneIn idx_ :"<< (int)ilaneIn->first<<endl;

  //       fileListLane << "\t\tLaneNumber"<<"\tbIsPartOfCalculatedRoute"<< "\ttype"<< "\t  Direction"<< "\tTransition"<< "\tLength"<< endl;
  //       fileListLane << "\t\t"<< (int)ilaneIn->second.m_iLaneNumber
  //                     <<"\t\t"<< ilaneIn->second.m_bIsPartOfCalculatedRoute
  //                     << "\t\t"<< ilaneIn->second.m_eType
  //                     << "\t\t"<< ilaneIn->second.m_eDirection
  //                     << "\t\t"<< ilaneIn->second.m_eTransition
  //                     << "\t\t"<< ilaneIn->second.m_iLength << endl;  
  //       fileListLane << "\t\tilaneIn Centerline info :\n";
  //       fileListLane << "\t\t\tilaneIn Centerline type"<<"\tLineId"<<endl;
  //       fileListLane << "\t\t\t"<<ilaneIn->second.m_stCenterline.m_pLineObj.m_eType
  //                   <<"\t"<<ilaneIn->second.m_stCenterline.m_pLineObj.m_iLineId<<endl;                   
  //   }
  //   for (auto ilaneOut = iter->second.m_mapLaneOUT.begin(); ilaneOut != iter->second.m_mapLaneOUT.end(); ilaneOut++)
  //   {
  //       fileListLane << "\tiilaneOut idx_ :"<< (int)ilaneOut->first<<endl;

  //       fileListLane << "\t\tLaneNumber"<<"\tbIsPartOfCalculatedRoute"<< "\ttype"<< "\t  Direction"<< "\tTransition"<< "\tLength"<< endl;
  //       fileListLane << "\t\t"<< (int)ilaneOut->second.m_iLaneNumber
  //                     <<"\t\t"<< ilaneOut->second.m_bIsPartOfCalculatedRoute
  //                     << "\t\t"<< ilaneOut->second.m_eType
  //                     << "\t\t"<< ilaneOut->second.m_eDirection
  //                     << "\t\t"<< ilaneOut->second.m_eTransition
  //                     << "\t\t"<< ilaneOut->second.m_iLength << endl;  
  //       fileListLane << "\t\tilaneOut Centerline info :\n";
  //       fileListLane << "\t\t\tilaneOut Centerline type"<<"\tLineId"<<endl;
  //       fileListLane << "\t\t\t"<<ilaneOut->second.m_stCenterline.m_pLineObj.m_eType
  //                   <<"\t"<<ilaneOut->second.m_stCenterline.m_pLineObj.m_iLineId<<endl;                   
  //   }
  //   fileListLane <<"-------------laneinfo------------------\n";
    
  // }
  // fileListLane <<"-------------Get car localization Lane info------------------\n";
}



using std::fixed;
//void ehr_callback(ReferenceLineInfo* referenceline_,UDPStruct* HDmapDatas, struct timeval* tv, struct timezone* tz,me_uint32 counterTemp);
//using namespace std;
int main(int argc, char *argv[])
{
  //定义日志输出的名字和路径
  string fileName, fileNameListLane, hour_tem, minute_tem, second_tem,day_tem,tm_mon;
  string filePath = "LOG/";
  fileName = "HDmapResult.txt";
  string fileName_Debug = "HDmapDebug.txt"; 
  fileNameListLane = "HDmapResultLaneList.txt";
  time_t nSeconds;
  struct tm * pTM;
  time( &nSeconds );
  pTM = localtime(&nSeconds);
  hour_tem = to_string( pTM->tm_hour );
  minute_tem = to_string( pTM->tm_min );
  //second_tem = to_string( pTM->tm_sec );
  day_tem = to_string( pTM->tm_mday);
  tm_mon = to_string( pTM->tm_mon + 1);	
  cout<<"xiaotong.feng"<<endl;
  if (0 != access(filePath.c_str(), 0))
  {
    mkdir(filePath.c_str(), S_IRWXU|S_IRWXG|S_IRWXO);   // 返回 0 表示创建成功，-1 表示失败
    cout << "make directory !" << endl;
  }
  
  fileName = filePath + tm_mon +"_" + day_tem +"_" +hour_tem +"_" + minute_tem + "_"+fileName;//将路劲和文件名结合
  fileName_Debug = filePath + tm_mon +"_" + day_tem +"_" +hour_tem +"_" + minute_tem + "_"+fileName_Debug;
  fileNameListLane = filePath +tm_mon +"_" + day_tem +"_" +hour_tem +"_" + minute_tem + "_"+ fileNameListLane;
  // fileName = filePath + "/"+ fileName;//将路劲和文件名结合
  // fileNameListLane = filePath + "/" + fileNameListLane;

  file.open(fileName);
  fileListLane.open(fileNameListLane);
  fileDebug.open(fileName_Debug);
  /*Av3hr_e eRet = Av3HR_API_Initialize();
  cout << "API initialize: " << eRet << endl;
  if (eRet > 0)
  {
      Av3HR_API_Destroy();
      return 0;
  }
  */
  ehr_api api;
  if (api.eRet_ > 0)
  {
    api.Destory();
    cout<<"Init failed!";
  }
  else cout<< "Init successed!";
  me_uint32 counterTemp = 0;
  struct timeval tv;
  struct timezone tz;
  gettimeofday(&tv,&tz);
  //ReferenceLineInfo referencelineinfo;

  struct UDPStruct HDmapDatas;//用于UDP通信
  memset(&HDmapDatas, 0, sizeof(HDmapDatas));//initialize 0

  // cout << sizeof(testStruct) << endl;
  cout <<"test= "<< sizeof(Av3hr_eFormOfWay) << endl;

  while(true)
  {
    gettimeofday(&tv,&tz);// 获取系统时间
    if(counterTemp > 100000)// 用于循环计数
      counterTemp = 0;
    else
      counterTemp++; 
    api.Process(tv);
    // 调用EHR api，对接Referenceline 接口
    //得到laneinfo
    //cout<<"listlanes: "<<api.listLanes_.size()<<endl;
    //if (api.listLanes_.size()>0)
    //{
    //for(const auto &w :api.listLanes_.data()->m_mapLaneInfos)
    //  cout << w.first << "  "<<endl;
    //}

    // // LIST_LANEMODELS* temp_listlanes = &api.listLanes_;
    // if (api.listLanes_.size()>0)
    // {
    //   PrintLaneInfo(api.listLanes_);
    // }
    std::vector<S_LANEINFO> laneinfo_;
    ReferenceLineInfo ref;
    if (api.listLanes_.size()>0){
      //if (GetLaneInfo(laneinfo_,api.listLanes_)){
        //PrintLaneInfo(laneinfo_);
      //}
      
    }
    if (laneinfo_.size()>0)
    {
      ref.laneinfo.assign(laneinfo_.begin(),laneinfo_.end());
    }
    
    
    

    
    // if (GetLaneInfo(laneinfo_,&(api.listLanes_)))
    // {
    //   PrintLaneInfo(laneinfo_);
    // }
    
    //ehr_callback(&referencelineinfo,&HDmapDatas,&tv,&tz,counterTemp);
    // 休眠10ms
    usleep(10000);
  }

  file.close();
  fileListLane.close();

  Av3HR_API_Destroy();
  return 0;
}
