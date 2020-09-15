#include "map_server.h"
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
#include <iostream>

#define OFFSETMAX 10000000
#define out_flag 0
#define debug_out_flag  0
#define out_flag_listLane 0
#define not_out_flag_dots 1
#define listCurvatureOffset 20000 //单位：cm
#define xiaotongfengDebug 1


ehr_api::ehr_api(){
  eRet_ = Av3HR_API_Initialize();
  time( &nSeconds );
  pTM = localtime(&nSeconds);
  hour_tem = to_string( pTM->tm_hour );
  minute_tem = to_string( pTM->tm_min );
  day_tem = to_string( pTM->tm_mday);
  tm_mon = to_string( pTM->tm_mon + 1);	
  if (0 != access(filePath.c_str(), 0))
  {
    mkdir(filePath.c_str(), S_IRWXU|S_IRWXG|S_IRWXO);   // 返回 0 表示创建成功，-1 表示失败
    std::cout << "make directory !" << endl;
  }

  fileName = filePath + tm_mon +"_" + day_tem +"_" +hour_tem +"_" + minute_tem + "_"+fileName;//将路劲和文件名结合
  fileName_Debug = filePath + tm_mon +"_" + day_tem +"_" +hour_tem +"_" + minute_tem + "_"+fileName_Debug;
  fileNameListLane = filePath +tm_mon +"_" + day_tem +"_" +hour_tem +"_" + minute_tem + "_"+ fileNameListLane;
  
  file.open(fileName);
  fileListLane.open(fileNameListLane);
  fileDebug.open(fileName_Debug);
};

ehr_api::~ehr_api(){
  Av3HR_API_Destroy();

  file.close();
  fileListLane.close();
  fileDebug.close();
};

void ehr_api::Destory(void){
    Av3HR_API_Destroy();
};

void ehr_api::Process(struct timeval tv){
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
          //cout << "mainPathID: " << iPathId_ << endl;
        #endif
      }
      bIsStart_ = true;
    }
  }
  if (iPathId_ != Av3HR_GetMainPathID())
  {
        iPathId_ = Av3HR_GetMainPathID();
        //cout << "mainPathID: " << iPathId_ << endl;
  }
  // 获取当前位置信息
  if ((Av3HR_GetPosition(&position_) == Av3HR_OK))
  {
    HDmapDatas_.PositionOffset = position_.m_iOffset;
    HDmapinfo_.positionstate = 1;
    //cout << position_.m_iOffset<< endl;
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
  } else
  {
    HDmapinfo_.positionstate = 2;
  }
  
  //当加载的数据小于 500m 时, 重新加载 1km 的数据
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
    if (iLoadOffsetS_ < 0){
      iLoadOffsetS_ = 0;
    }
    iLoadOffsetE_ = iLoadOffsetS_ + 30000; // 1km
    iEndOffset_ = iLoadOffsetE_;
    if (Av3HR_PathOffset(iPathId_, iLoadOffsetS_, iLoadOffsetE_) == Av3HR_OK)
    {
      // 获取车道信息
      // LIST_LANEMODELS listLanes;
      listLanes_.clear();
      if (Av3HR_GetLane(&listLanes_) == Av3HR_OK)
      {
        #if out_flag
        //cout << "numOfLanes: " << listLanes_.size() << endl;//车道是链表(list) vector<Av3hr_LaneMode>
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
  HDmapinfo_.curlane = -1;
  pLane_.m_mapLaneOUT.clear();
  if (Av3HR_GetCurrentLane(&pLane_) == Av3HR_OK)
  {
    HDmapinfo_.isValidlane = 0;

    Av3hr_laneidx_t iLaneNumber, iLaneNumberLast;
    Av3hr_laneidx_t leftNeighbourLane, rightNeighbourLane;
    iLaneNumberLast = 0;
    iLaneNumber = pLane_.m_iLaneNumber;
    HDmapinfo_.curlane = pLane_.m_iLaneNumber;
    if (iLaneNumber != iLaneNumberLast)
    {
      //车道编号从右向左,1开始增加
      std::vector<Av3hr_WGS84Point>::iterator its_WGS84Point_temp;
      #if out_flag
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
      #endif
      // leftNeighbourLane = iLaneNumber +1;
      // rightNeighbourLane = iLaneNumber-1;/* code */neInfos.m_stLeftBoundary.m_pLineGeometry.m_vPoints.end(); ++its_WGS84Point_temp)
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
 
  }else if (Av3HR_GetCurrentLane(&pLane_) == Av3HR_FAIL)
  {
    HDmapinfo_.isValidlane = 1;
  }else if (Av3HR_GetCurrentLane(&pLane_) == Av3HR_NOT_SUPPORTED)
  {
    HDmapinfo_.isValidlane = 2;
  }else
  {
    HDmapinfo_.isValidlane = 3;
  }
  
  // todo 获取限速信息
  if (Av3HR_GetSpeedLimit(&pListSpeedLimits_) == Av3HR_OK)
  {
  }
  // 判断是否为隧道
  if (Av3HR_IsTunnel(bTunnel_) == Av3HR_OK){
    HDmapinfo_.istunnel = bTunnel_;
  }
  // 获取终止线
  if (Av3HR_GetNextStopline(iStopOffset_, &pStopline_) == Av3HR_OK){
    HDmapinfo_.stopline.offset = pStopline_.m_iOffset;
    HDmapinfo_.stopline.latOffset = pStopline_.m_iLateralOffset;
    HDmapinfo_.stopline.type = pStopline_.m_eType;
    HDmapinfo_.stopline.validnum = pStopline_.m_iPointSize;
    HDmapinfo_.stopline.point.clear();
    S_POINT temppoint;
    for(auto iter = pStopline_.m_vPoints.begin();iter !=pStopline_.m_vPoints.end();iter++){
      temppoint.x = iter->m_iLongitude;
      temppoint.y = iter->m_iLatitude;
      temppoint.z = iter->m_iAltitude;
      HDmapinfo_.stopline.point.push_back(temppoint);
    }

  } 


  
};
// end ehr_api process

bool ehr_api::GetLaneInfo(){
  S_LANEINFO temp_lane;
  //对于每一条车道的信息添加到laneinfo中
  S_POINT temp_point;
  S_POINT temp_left_point;
  S_POINT temp_right_point;
  size_t i;
  if (listLanes_.size()<= 0){
    fileListLane<<"lane info is null"<<endl;
    return false;
  }
  // IdMoveNum 车道发生的横移数量
  if (HDmapinfo_.curlane != -1){
    IdMoveNum = pLane_.m_mapLaneOUT.begin()->second.m_iLaneNumber -  HDmapinfo_.curlane;
  }else return false;
  //std::cout<< "current id is "<< HDmapinfo_.curlane<<endl;
  //std::cout<< "next size is " <<pLane_.m_mapLaneOUT.size()<<endl;
  //std::cout<< "next id is "<< int(pLane_.m_mapLaneOUT.begin()->second.m_iLaneNumber)<<endl;
  // 清除laneinfo 原有point点
  /*
  for(auto iter = HDmapinfo_.laneinfo.begin();iter != HDmapinfo_.laneinfo.end();iter++){
    iter->centerline.point.clear();
    iter->leftboundry.point.clear();
    iter->rightboundry.point.clear();
  }
  */
  
 
  //输出两段laneinfo 
  auto list_data = listLanes_.begin();
  //输出第一段 
  HDmapinfo_.laneinfo.clear();
  
  
  S_LANEINFO voidlane;
  if(IdMoveNum > 0){
      for(int ii = 0;ii<IdMoveNum;ii++)
        HDmapinfo_.laneinfo.emplace_back(voidlane);
  }
  
  int16_t loc = 0; 
  
  for (auto iter = list_data ->m_mapLaneInfos.begin(); iter != list_data ->m_mapLaneInfos.end(); iter++){
    //车道id 
    temp_lane.id = iter->first;
    //direction
    temp_lane.direction = iter->second.m_eDirection;
    //type
    temp_lane.type = iter->second.m_eType;
    //isPartofRouting
    temp_lane.IsPartofRouting = iter->second.m_bIsPartOfCalculatedRoute;
    //width 暂时没有
    //centerline point
    temp_lane.centerline.type = iter->second.m_stCenterline.m_pLineObj.m_eType;
    temp_lane.centerline.point.clear();
    temp_lane.centerline.lineType.clear();
    temp_lane.rightboundry.pointnum = 0;
    for (i = 0; i < iter->second.m_stCenterline.m_pLineGeometry.m_vPoints.size(); i++)
    {
      fileDebug <<"debug  !! "<< temp_point.x <<endl;
      temp_point.x = iter->second.m_stCenterline.m_pLineGeometry.m_vPoints[i].m_iLatitude;
      temp_point.y = iter->second.m_stCenterline.m_pLineGeometry.m_vPoints[i].m_iLongitude;
      temp_point.z = iter->second.m_stCenterline.m_pLineGeometry.m_vPoints[i].m_iAltitude;
      if (temp_lane.centerline.point.size()< 100){
        temp_lane.centerline.point.emplace_back(temp_point);
        temp_lane.centerline.lineType.emplace_back(iter->second.m_stCenterline.m_pLineObj.m_eType);
      }else {
        break;
      }
    }
    //leftboundry
    temp_lane.leftboundry.type = iter->second.m_stLeftBoundary.m_pLineObj.m_eType;
    temp_lane.leftboundry.point.clear();
    temp_lane.leftboundry.lineType.clear();
    temp_lane.rightboundry.pointnum = 0;
    for (i = 0; i < iter->second.m_stLeftBoundary.m_pLineGeometry.m_vPoints.size(); i++)
    {
      temp_left_point.x = iter->second.m_stLeftBoundary.m_pLineGeometry.m_vPoints[i].m_iLatitude;
      temp_left_point.y = iter->second.m_stLeftBoundary.m_pLineGeometry.m_vPoints[i].m_iLongitude;
      temp_left_point.z = iter->second.m_stLeftBoundary.m_pLineGeometry.m_vPoints[i].m_iAltitude;
      if (temp_lane.centerline.point.size()< 100){
        temp_lane.leftboundry.point.emplace_back(temp_point);
        temp_lane.leftboundry.lineType.emplace_back(iter->second.m_stLeftBoundary.m_pLineObj.m_eType);
      }else {
        break;
      }
    }
    //rightboundry
    temp_lane.rightboundry.type = iter->second.m_stRightBoundary.m_pLineObj.m_eType;
    temp_lane.rightboundry.point.clear();
    temp_lane.rightboundry.lineType.clear();
    temp_lane.rightboundry.pointnum = 0;
    for (i = 0; i < iter->second.m_stRightBoundary.m_pLineGeometry.m_vPoints.size(); i++)
    {
      temp_right_point.x = iter->second.m_stRightBoundary.m_pLineGeometry.m_vPoints[i].m_iLatitude;
      temp_right_point.y = iter->second.m_stRightBoundary.m_pLineGeometry.m_vPoints[i].m_iLongitude;
      temp_right_point.z = iter->second.m_stRightBoundary.m_pLineGeometry.m_vPoints[i].m_iAltitude;
      if (temp_lane.centerline.point.size()< 100){
        temp_lane.rightboundry.point.emplace_back(temp_point);
        temp_lane.rightboundry.lineType.emplace_back(iter->second.m_stRightBoundary.m_pLineObj.m_eType);
      }else {
        break;
      }
    }
    HDmapinfo_.laneinfo.emplace_back(temp_lane);
    loc++;
    if (loc>=5) break;
  }
  //std::cout<<"1 HDmapinfo_ lane num is "<<HDmapinfo_.laneinfo.size()<<endl;
  //加载下一段
  if (list_data != listLanes_.end())
  {
    list_data ++;
    loc = 0;
    //std::cout<<"before "<<loc<< " centerline size is "<< HDmapinfo_.laneinfo[loc].centerline.point.size()<<endl;
    //std::cout<<"before "<<loc<< " leftboundry size is "<< HDmapinfo_.laneinfo[loc].leftboundry.point.size()<<endl;
    //std::cout<<"before "<<loc<< " rightboundry size is "<< HDmapinfo_.laneinfo[loc].rightboundry.point.size()<<endl;
    //std::cout<<"lanelist size is "<< list_data->m_mapLaneInfos.size()<<endl;
    for(auto iter = list_data->m_mapLaneInfos.begin(); iter != list_data ->m_mapLaneInfos.end(); iter++)
    {
      for (i = 0; i < iter->second.m_stCenterline.m_pLineGeometry.m_vPoints.size(); i++)
      {
        temp_point.x = iter->second.m_stCenterline.m_pLineGeometry.m_vPoints[i].m_iLatitude;
        temp_point.y = iter->second.m_stCenterline.m_pLineGeometry.m_vPoints[i].m_iLongitude;
        temp_point.z = iter->second.m_stCenterline.m_pLineGeometry.m_vPoints[i].m_iAltitude;
        if (HDmapinfo_.laneinfo[loc].centerline.point.size()< 100){
          HDmapinfo_.laneinfo[loc].centerline.point.emplace_back(temp_point);
          HDmapinfo_.laneinfo[loc].centerline.lineType.emplace_back(iter->second.m_stCenterline.m_pLineObj.m_eType);
        }else{
           break;
        }
        
      }
      HDmapinfo_.laneinfo[loc].centerline.pointnum = HDmapinfo_.laneinfo[loc].centerline.point.size();
      //std::cout<<loc<< " centerline size is "<< HDmapinfo_.laneinfo[loc].centerline.point.size()<<endl;
      for (i = 0; i < iter->second.m_stLeftBoundary.m_pLineGeometry.m_vPoints.size(); i++)
      {
        temp_left_point.x = iter->second.m_stLeftBoundary.m_pLineGeometry.m_vPoints[i].m_iLatitude;
        temp_left_point.y = iter->second.m_stLeftBoundary.m_pLineGeometry.m_vPoints[i].m_iLongitude;
        temp_left_point.z = iter->second.m_stLeftBoundary.m_pLineGeometry.m_vPoints[i].m_iAltitude;
        if (HDmapinfo_.laneinfo[loc].leftboundry.point.size()< 100){
          HDmapinfo_.laneinfo[loc].leftboundry.point.emplace_back(temp_left_point);
          HDmapinfo_.laneinfo[loc].leftboundry.lineType.emplace_back(iter->second.m_stLeftBoundary.m_pLineObj.m_eType);
        }else{
           break;
        }
      }
       HDmapinfo_.laneinfo[loc].leftboundry.pointnum = HDmapinfo_.laneinfo[loc].leftboundry.point.size();
      //std::cout<<loc<< " leftboundry size is "<< HDmapinfo_.laneinfo[loc].leftboundry.point.size()<<endl;
      for (i = 0; i < iter->second.m_stRightBoundary.m_pLineGeometry.m_vPoints.size(); i++)
      {
        temp_right_point.x = iter->second.m_stRightBoundary.m_pLineGeometry.m_vPoints[i].m_iLatitude;
        temp_right_point.y = iter->second.m_stRightBoundary.m_pLineGeometry.m_vPoints[i].m_iLongitude;
        temp_right_point.z = iter->second.m_stRightBoundary.m_pLineGeometry.m_vPoints[i].m_iAltitude;
        if (HDmapinfo_.laneinfo[loc].rightboundry.point.size()< 100){
          HDmapinfo_.laneinfo[loc].rightboundry.point.emplace_back(temp_right_point);
          HDmapinfo_.laneinfo[loc].rightboundry.lineType.emplace_back(iter->second.m_stRightBoundary.m_pLineObj.m_eType);
        }else{
          break;
        }
      }
      HDmapinfo_.laneinfo[loc].rightboundry.pointnum = HDmapinfo_.laneinfo[loc].rightboundry.point.size();
      //std::cout<<loc<< " rightboundry size is "<< HDmapinfo_.laneinfo[loc].rightboundry.point.size()<<endl;
      loc++;
      if (loc>=5) break;
    }
    
    
  }
  
  //std::cout<<"2 HDmapinfo_ lane num is "<<HDmapinfo_.laneinfo.size()<<endl;
  //std::cout<<"the first point is "<< HDmapinfo_.laneinfo.begin()->centerline.point[0].x<<endl;
  //fileListLane<<" get lane info success"<<endl;
  return true;
}