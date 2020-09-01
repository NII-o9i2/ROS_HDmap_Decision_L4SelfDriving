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

#define OFFSETMAX 10000000
#define out_flag 1
#define out_flag_listLane 1
#define not_out_flag_dots 1
#define listCurvatureOffset 20000 //单位：cm

QTextStream cout(stdout, QIODevice::WriteOnly);
QTextStream cin(stdin, QIODevice::ReadOnly);
ofstream file, fileListLane;
using std::fixed;

int main(int argc, char *argv[])
{
  string fileName, fileNameListLane, hour_tem, minute_tem, second_tem;
  string filePath = "dataFolder";
  fileName = "HDmapResult.txt";
  fileNameListLane = "HDmapResultLaneList.txt";
  time_t nSeconds;
  struct tm * pTM;
  time( &nSeconds );
  pTM = localtime(&nSeconds);
  hour_tem = to_string( pTM->tm_hour );
  minute_tem = to_string( pTM->tm_min );
  second_tem = to_string( pTM->tm_sec );

  if (0 != access(filePath.c_str(), 0))
  {
    mkdir(filePath.c_str(), S_IRWXU|S_IRWXG|S_IRWXO);   // 返回 0 表示创建成功，-1 表示失败
    cout << "make directory !" << endl;
  }
  
  fileName = hour_tem +"_" + minute_tem+ "_"+second_tem +"_"+fileName;//将路劲和文件名结合
  fileNameListLane =  hour_tem +"_" + minute_tem+ "_"+second_tem +"_"+ fileNameListLane;
  // fileName = filePath + "/"+ fileName;//将路劲和文件名结合
  // fileNameListLane = filePath + "/" + fileNameListLane;

  file.open(fileName);
  fileListLane.open(fileNameListLane);
  
  Av3hr_e eRet = Av3HR_API_Initialize();
  cout << "API initialize: " << eRet << endl;
  if (eRet > 0)
  {
      Av3HR_API_Destroy();
      return 0;
  }
  Av3hr_pathid_t iPathId = 0;
  Av3hr_offset_t iLoadOffsetS = 0;
  Av3hr_offset_t iLoadOffsetE = iLoadOffsetS + INT_MAX;
  Av3hr_offset_t iEndOffset = 0;
  me_bool bIsStart = false;
  me_uint32 counterTemp = 0;
  struct timeval tv;
  struct timezone tz;
  gettimeofday(&tv,&tz);

  struct UDPStruct HDmapDatas;//用于UDP通信
  memset(&HDmapDatas, 0, sizeof(HDmapDatas));//initialize 0

  while( true )
  {
    gettimeofday(&tv,&tz);//获取系统时间
    if(counterTemp > 100000)//用于循环计数
      counterTemp = 0;
    else
      counterTemp++;

    Av3hr_eMapStatus eStatus;
    if (Av3HR_IsChanged(eStatus))
    {
      if (eStatus == Av3hr_eMapStatus_Create)
      {
        if (iPathId != Av3HR_GetMainPathID())
        {
          iPathId = Av3HR_GetMainPathID();//主路径编号
          iEndOffset = 0;
          #if out_flag
          cout << "mainPathID: " << iPathId << endl;
          file << "mainPathID: " << iPathId << " ";
          cout << " second = " << tv.tv_sec << " microsecond = " <<  tv.tv_usec << " counterTemp= " << counterTemp <<endl;
          #endif
        }
        bIsStart = true;
      }
    }

    Av3hr_Position position;
    if ((Av3HR_GetPosition(&position) == Av3HR_OK))
    {
      HDmapDatas.PositionOffset = position.m_iOffset;

      cout << "position: pathid=" << position.m_iPathId << " lane=" << (int)position.m_iCurrentLane
       << "m_iTimestamp=" << position.m_iTimestamp << endl;
      #if out_flag
      file <<"position: time=" << position.m_iTimestamp <<" pathid=" << position.m_iPathId
       << ", offset=" << position.m_iOffset << ", lane=" << (int)position.m_iCurrentLane
       << ", crood=" << setiosflags(ios::fixed) << setprecision(7) << position.m_stCrd.m_stPoint.fLongitude 
       << "," <<setiosflags(ios::fixed) << setprecision(7) << position.m_stCrd.m_stPoint.fLatitude << "," 
       << position.m_stCrd.m_stPoint.fAltitude << ", heading=" << position.m_fHeading << endl;
       
       // file << " second = " << tv.tv_sec << " microsecond = " <<  tv.tv_usec << " counterTemp= " << counterTemp <<endl;
      #endif
    }

    //当加载的数据小于 1km 时, 重新加载 2km 的数据
    LIST_LANEMODELS listLanes;//全局变量,在获取车道线的时候使用
    if(bIsStart && (iEndOffset< position.m_iOffset||(iEndOffset- position.m_iOffset) < 100000))
    {
      if(iEndOffset > 0)
      {
        #if out_flag
        file << "remainingOffset: " << iEndOffset - position.m_iOffset << endl;
        // file << " second = " << tv.tv_sec << " microsecond = " <<  tv.tv_usec << " counterTemp= " << counterTemp <<endl;
        #endif
      }

      // 示例1： 获取车道组数据集, begin//
      // iLoadOffsetS : 需要加载数据的起始 offset 位置
      // iLoadOffsetE : 需要加载数据的结束 offset 位置
      iLoadOffsetS = position.m_iOffset;
      iLoadOffsetE = iLoadOffsetS + 200000; // 2km
      iEndOffset = iLoadOffsetE;
      if (Av3HR_PathOffset(iPathId, iLoadOffsetS, iLoadOffsetE) == Av3HR_OK)
      {
        #if 0
        file << "load data offsetS: " << iLoadOffsetS << ", offsetE: " << iLoadOffsetE << endl;//
        #endif

        // 获取车道信息
        // LIST_LANEMODELS listLanes;
        if (Av3HR_GetLane(&listLanes) == Av3HR_OK)
        {
          #if out_flag
          file << "numOfLanes: " << listLanes.size() << endl;//车道是链表(list) vector<Av3hr_LaneMode>
          // cout << listLanes[0].m_iTotalNumberOfLanes << endl;//测试
          #endif

          if(out_flag_listLane)
          {
            std::vector<Av3hr_LaneModel>::iterator ite_LaneModel;
            std::map<Av3hr_laneidx_t, Av3hr_LaneInfo>::iterator ite_LaneInfo;
            std::vector< Av3hr_WGS84Point>::iterator ite_Points;
            // std::map<Av3hr_laneidx_t, Av3hr_LaneInfo>::iterator ite_LaneInfo;

            fileListLane << " second = " << tv.tv_sec << " microsecond = " <<  tv.tv_usec << " counterTemp= " << counterTemp <<endl;
            fileListLane << "laneModelSize= " << listLanes.size() << endl;
            for(ite_LaneModel = listLanes.begin(); ite_LaneModel != listLanes.end(); ++ite_LaneModel)
            {
              fileListLane << "listLaneModel_index= " << ite_LaneModel - listLanes.begin() << " ";
              fileListLane << "listLaneModel: TotalNum=" << (int)ite_LaneModel->m_iTotalNumberOfLanes << " size=" << ite_LaneModel->m_iSize << endl;
              // Av3hr_LaneModel & LaneModel_temp = *ite_LaneModel;
              for(ite_LaneInfo= ite_LaneModel->m_mapLaneInfos.begin(); ite_LaneInfo!= ite_LaneModel->m_mapLaneInfos.end(); ++ite_LaneInfo)
              {

                fileListLane << "laneLength= " << ite_LaneInfo->second.m_iLength << endl;

                // #if not_out_flag_dots
                // fileListLane << " LaneIN_size= " <<  ite_LaneInfo->second.m_mapLaneIN.size() << " LaneOUT_index= " << ite_LaneInfo->second.m_mapLaneOUT.size();
                // #else
                // for()
                // fileListLane
                
                #if not_out_flag_dots
                fileListLane << "left lane size = " << ite_LaneInfo->second.m_stLeftBoundary.m_pLineGeometry.m_vPoints.size() << endl;
                fileListLane << "right lane size = " << ite_LaneInfo->second.m_stRightBoundary.m_pLineGeometry.m_vPoints.size() << endl;
                
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
            }
          }
          else if(out_flag)
          {
            std::vector<Av3hr_LaneModel>::iterator ite_LaneModel;
            std::map<Av3hr_laneidx_t, Av3hr_LaneInfo>::iterator ite_LaneInfo;
            std::vector< Av3hr_WGS84Point>::iterator ite_Points;
            // file << " second = " << tv.tv_sec << " microsecond = " <<  tv.tv_usec << " counterTemp= " << counterTemp <<endl;
            file << "laneModelSize= " << listLanes.size() << endl;
            for(ite_LaneModel = listLanes.begin(); ite_LaneModel != listLanes.end(); ++ite_LaneModel)
            {
              file << "listLaneModel_index= " << ite_LaneModel - listLanes.begin() << " ";
              file << "listLaneModel: TotalNum=" << ite_LaneModel->m_iTotalNumberOfLanes << " size=" << ite_LaneModel->m_iSize << endl;
              // Av3hr_LaneModel & LaneModel_temp = *ite_LaneModel;
              for(ite_LaneInfo= ite_LaneModel->m_mapLaneInfos.begin(); ite_LaneInfo!= ite_LaneModel->m_mapLaneInfos.end(); ++ite_LaneInfo)
              {
                #if not_out_flag_dots
                file << "left lane size = " << ite_LaneInfo->second.m_stLeftBoundary.m_pLineGeometry.m_vPoints.size() << endl;
                file << "right lane size = " << ite_LaneInfo->second.m_stRightBoundary.m_pLineGeometry.m_vPoints.size() << endl;

                #else
                file << "laneInfo: laneNum=" << (int)ite_LaneInfo->second.m_iLaneNumber << " length=" << ite_LaneInfo->second.m_iLength << endl;
                file << "left lane: crood=" << endl;//输出经纬度点
                for(ite_Points= ite_LaneInfo->second.m_stLeftBoundary.m_pLineGeometry.m_vPoints.begin(); 
                  ite_Points!= ite_LaneInfo->second.m_stLeftBoundary.m_pLineGeometry.m_vPoints.end(); ++ite_Points)
                {
                  file << setiosflags(ios::fixed) << setprecision(7) <<ite_Points->m_stPoint.fLongitude << "," 
                   <<setiosflags(ios::fixed) << setprecision(7) << ite_Points->m_stPoint.fLatitude << ";";
                }
                file << "right lane: crood=" << endl;//输出经纬度点
                for(ite_Points= ite_LaneInfo->second.m_stRightBoundary.m_pLineGeometry.m_vPoints.begin(); 
                  ite_Points!= ite_LaneInfo->second.m_stRightBoundary.m_pLineGeometry.m_vPoints.end(); ++ite_Points)
                {
                  file << setiosflags(ios::fixed) << setprecision(7) <<ite_Points->m_stPoint.fLongitude << "," 
                   <<setiosflags(ios::fixed) << setprecision(7) << ite_Points->m_stPoint.fLatitude << ";";
                }
                #endif

              }
            }
          }//out_flag_listLane

        }

        // // 获取节点信息
        // LIST_NODES listNodes;
        // if (Av3HR_GetNode(&listNodes) == Av3HR_OK)
        // {
        //   #if 0
        //   file << "nodeSize: " << listNodes.size() << endl;
        //   #endif
        // }

        // // 获取交通标示牌信息
        // LIST_TRAFFICSIGNS listTrafficSigns;
        // if (Av3HR_GetTrafficSign(&listTrafficSigns) == Av3HR_OK)
        // {
        //   #if 0
        //   file << "traffic sign size: " << listTrafficSigns.size() << endl;
        //   #endif
        // }

        // // 获取红绿灯信息
        // LIST_TRAFFICLIGHTS listTrafficLights;
        // if (Av3HR_GetTrafficLight(&listTrafficLights) == Av3HR_OK)
        // {
        //   #if 0
        //   file << "traffic light size: " << listTrafficLights.size() << endl;
        //   #endif
        // }

        // 获取限速警告信息
        LIST_SPEEDLIMITS listSpeedLimits;
        if (Av3HR_GetSpeedLimit(&listSpeedLimits) == Av3HR_OK)
        {
          // file << " second = " << tv.tv_sec << " microsecond = " <<  tv.tv_usec << " counterTemp= " << counterTemp <<endl;

          #if out_flag
          file << "speedLimit size" << listSpeedLimits.size() << endl;
          if(listSpeedLimits.size() > 0)
          {
            std::vector<Av3hr_ExtendedSpeedLimit>::iterator ite;
            for(ite = listSpeedLimits.begin(); ite != listSpeedLimits.end(); ++ite)
            {
              //spdLimitTemp = *ite;
              file << "speedLimit: value=" << ite->m_stValue.m_ivalue << " offset=" <<ite->m_iOffset <<endl;
            }
          }
          #endif
        }

        // // 获取用于定位的地物信息
        // LIST_LOCATIONOBJECTS listLocationObjects;
        // if (Av3HR_GetLocationObject(&listLocationObjects) == Av3HR_OK)
        // {
        //   #if 0
        //   file << "location object size: " << listLocationObjects.size() << endl;
        //   #endif
        // }
      }
    }

    //获取当前车道和相邻车道信息
    Av3hr_LaneInfo pLane;
    if (Av3HR_GetCurrentLane(&pLane) == Av3HR_OK)
    {

      #if out_flag
      Av3hr_laneidx_t iLaneNumber, iLaneNumberLast;
      Av3hr_laneidx_t leftNeighbourLane, rightNeighbourLane;
      iLaneNumberLast = 0;
      iLaneNumber = pLane.m_iLaneNumber;
      
      if (iLaneNumber != iLaneNumberLast)
      {
        //车道编号从右向左,1开始增加
        std::vector<Av3hr_WGS84Point>::iterator its_WGS84Point_temp;

        // file << " second = " << tv.tv_sec << " microsecond = " <<  tv.tv_usec << " counterTemp= " << counterTemp <<endl;
        file << "current lane: number=" << (int)iLaneNumber << ", type=" << pLane.m_eType << endl;

        // std::vector<Av3hr_Linear>::iterator its_l;
        file << "left boundary: type=" << pLane.m_stLeftBoundary.m_pLineObj.m_eType << endl;//中心线,车道线,马路牙子,栅栏等等
        std::vector<Av3hr_Linear>::iterator its_l;
        for( its_l = pLane.m_stLeftBoundary.m_pLineObj.m_vLinears.begin(); its_l != pLane.m_stLeftBoundary.m_pLineObj.m_vLinears.end(); ++its_l)
        {
          Av3hr_Linear& linear = (*its_l);
          file << "left boundary: marking=" << linear.m_eMarking << ", color=" << linear.m_eColour << endl;//单虚线,双虚线,单实线等等
        }

        #if not_out_flag_dots
        file << "left lane size = " << pLane.m_stLeftBoundary.m_pLineGeometry.m_vPoints.size() << endl;

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
        file << "right boundary: type=" << pLane.m_stRightBoundary.m_pLineObj.m_eType << endl;
        for (its_r = pLane.m_stRightBoundary.m_pLineObj.m_vLinears.begin(); its_r != pLane.m_stRightBoundary.m_pLineObj.m_vLinears.end(); ++its_r)
        {
          Av3hr_Linear& linear = (*its_r);
          file << "right boundary: marking=" << linear.m_eMarking << ", color=" << linear.m_eColour << endl;
        }
        // file << "right boundary: points size=" << pLane.m_stRightBoundary.m_pLineGeometry.m_iPointSize << endl;
        // for (its_r = pLane.m_stRightBoundary.m_pLineGeometry.m_vLineGrid.begin(); its_r != pLane.m_stRightBoundary.m_pLineGeometry.m_vLineGrid.end(); ++its_r)
        // {
        //   Av3hr_LineGrid& linegrid = (*its_r);
        //   file << "right boundary: start index=" << linegrid.m_iIndexS << ", end index=" << linegrid.m_iIndexE << endl;
        // }

        #if not_out_flag_dots
        file << "right lane size = " << pLane.m_stRightBoundary.m_pLineGeometry.m_vPoints.size() << endl;

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

    //获取当前车道宽度
    me_int32 laneWidth;
    if(Av3HR_GetLaneWidth(laneWidth) == Av3HR_OK)
    {
      // HDmapDatas.LnWidth = laneWidth;

      #if out_flag
      // file << " second = " << tv.tv_sec << " microsecond = " <<  tv.tv_usec << " counterTemp= " << counterTemp <<endl;
      file << "laneWidth=" << laneWidth << endl;
      #endif
    }

    // // 获取前方一定范围的边线信息
    // Av3hr_offset_t iOffset = 4000;  // 单位：cm
    // Av3hr_LaneLine leftLaneLine, rightLaneLine;
    // if (Av3HR_GetLaneLine(iOffset, &leftLaneLine, &rightLaneLine) == Av3HR_OK)//函数Av3HR_GetLaneLine()在API接口中没有包含
    // {
    //   #if 0
    //   me_int iCount = leftLaneLine.m_pLineObj.m_vLinears.size();
    //   for (me_int i = 0;  i < iCount; i++)
    //   {
    //     file << "left lane line: type=" << leftLaneLine.m_pLineObj.m_vLinears[i].m_eMarking << ", color=" << leftLaneLine.m_pLineObj.m_vLinears[i].m_eColour << ", offset=" << leftLaneLine.m_pLineObj.m_vOffsets[i] << endl;
    //     file << "left lane line: point size=" << leftLaneLine.m_pLineGeometry.m_iPointSize << endl;
    //   }
    //   iCount = rightLaneLine.m_pLineObj.m_vLinears.size();
    //   for (me_int i = 0;  i < iCount; i++)
    //   {
    //     file << "right lane line: type=" << rightLaneLine.m_pLineObj.m_vLinears[i].m_eMarking << ", color=" << rightLaneLine.m_pLineObj.m_vLinears[i].m_eColour << ", offset=" << rightLaneLine.m_pLineObj.m_vOffsets[i] << endl;
    //     file << "right lane line: point size=" << rightLaneLine.m_pLineGeometry.m_iPointSize << endl;
    //   }
    //   #endif
    // }

    //获取前方一定范围的曲率信息
    Av3hr_offset_t iOffset = listCurvatureOffset;  // 单位：cm
    MAP_OFFSETFLOAT listCurvature;
    if (Av3HR_GetCurvature(iOffset, &listCurvature) == Av3HR_OK)
    {
      me_uint8 index = 0;
      MAP_OFFSETFLOAT::iterator its;
      HDmapDatas.ProfileShortCurvatureNoOfPoints = (me_uint16) listCurvature.size();
      for (its = listCurvature.begin(); its != listCurvature.end(); ++its)
      {
        HDmapDatas.ProfileShortCurvatureOffset[index] = its->first;
        HDmapDatas.ProfileShortCurvatureValue[index] = its->second;
        index++;
      }

      #if out_flag
      // file << " second = " << tv.tv_sec << " microsecond = " <<  tv.tv_usec << " counterTemp= " << counterTemp <<endl;

      #if not_out_flag_dots
      file << "listCurvatureSize= " << listCurvature.size() << endl;
      #else
      for (its = listCurvature.begin(); its != listCurvature.end(); ++its)
      {
        file << "curvature: offset=" << its->first << ", value=" << its->second << endl;
      }
      #endif

      #endif
    }

    // //获取前方坡度信息
    // Av3hr_offset_t iOffset = 3000;  // 单位：cm
    // MAP_OFFSETFLOAT listSlope;
    // if (Av3HR_GetSlope(iOffset, &listSlope) == Av3HR_OK)
    // {
    //   #if 0
    //   for (MAP_OFFSETFLOAT::iterator its = listSlope.begin(); its != listSlope.end(); ++its)
    //   {
    //     file << "slope: offset=" << its->first << ", value=" << its->second << endl;
    //   }
    //   #endif
    // }

    // //获取当前路径中的下一个停止线信息
    // Av3hr_offset_t iOffset = 0;  // 单位：cm
    // Av3hr_LocationObject stopline;
    // if (Av3HR_GetNextStopline(iOffset, &stopline) == Av3HR_OK)
    // {
    //   #if 0
    //   file << "location object: type=" << stopline.m_eType << ", offset=" << iOffset << endl;
    //   #endif
    // }

    // //获取当前路径中的下一个汇合路段
    // Av3hr_offset_t iOffset = 0;  // 单位：cm
    // if (Av3HR_GetNextConfluenceSection(iOffset) == Av3HR_OK)
    // {
    //   #if 0
    //   file << "next confluence: offset=" << iOffset << endl;
    //   #endif
    // }

    //获取当前路径中的下一个(上/下)匝道路段
    // Av3hr_offset_t iOffset = 0;  // 单位：cm


    if (Av3HR_GetNextRamp(Av3hr_FormOfWay_InHighWayRamp, iOffset) == Av3HR_OK)
    {
      HDmapDatas.FormOfWay[1] = (Av3hr_eFormOfWay)6;//上高架匝道
      HDmapDatas.FormOfWayOffset = iOffset;//当前位置到上匝道口的距离

      #if out_flag
      // file << " second = " << tv.tv_sec << " microsecond = " <<  tv.tv_usec << " counterTemp= " << counterTemp <<endl;
      file << "in ramp: offset=" << iOffset << endl;
      #endif
    }
    else if (Av3HR_GetNextRamp(Av3hr_FormOfWay_OutHighWayRamp, iOffset) == Av3HR_OK)
    {
      HDmapDatas.FormOfWay[1] = (Av3hr_eFormOfWay)7;//下高架匝道
      HDmapDatas.FormOfWayOffset = iOffset;//当前位置到下匝道口的距离

      #if out_flag
      // file << " second = " << tv.tv_sec << " microsecond = " <<  tv.tv_usec << " counterTemp= " << counterTemp <<endl;
      file << "off ramp: offset=" << iOffset << endl;
      #endif
    }
    else
    {
      #if out_flag
      HDmapDatas.FormOfWay[1] = (Av3hr_eFormOfWay)0;//下高架匝道
      HDmapDatas.FormOfWayOffset = 0;//当前位置到下匝道口的距离
      // file << " second = " << tv.tv_sec << " microsecond = " <<  tv.tv_usec << " counterTemp= " << counterTemp <<endl;
      #endif
    }

    //获取当前道路类型
    //FormOfWay是2维数组,0:当前,1:下一个,主要是匝道
    Av3hr_eFormOfWay eRoadType;
    if (Av3HR_GetFormOfWay(eRoadType) == Av3HR_OK)
    {
      HDmapDatas.FormOfWay[0] = eRoadType;

      #if out_flag
      // file << " second = " << tv.tv_sec << " microsecond = " <<  tv.tv_usec << " counterTemp= " << counterTemp <<endl;
      file << "FormOfWay: type=" << eRoadType << endl;
      #endif
    }
    // 休眠10ms
    usleep(10000);
  }

  file.close();
  fileListLane.close();

  Av3HR_API_Destroy();
  return 0;
}
