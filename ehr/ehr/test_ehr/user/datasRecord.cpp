#include <datasRecord.h>
#include <map>
#include <vector>

#define not_out_flag_dots 1

using std::map;
using std::vector;

void GetMainPathID_datasRecord(ofstream& fout, Av3hr_pathid_t& PathId, struct timeval& tv)
{
	fout << "mainPathID: " << PathId << " ";
}

void GetPosition_datasRecord(ofstream& fout, Av3hr_Position& position, struct timeval& tv, unsigned int& counterTemp)
{
	fout << "position: time=" << position.m_iTimestamp <<" pathid=" << position.m_iPathId
       << ", offset=" << position.m_iOffset << ", lane=" << (int)position.m_iCurrentLane
       << ", crood=" << setiosflags(ios::fixed) << setprecision(7) << position.m_stCrd.m_stPoint.fLongitude 
       << "," <<setiosflags(ios::fixed) << setprecision(7) << position.m_stCrd.m_stPoint.fLatitude << "," 
       << position.m_stCrd.m_stPoint.fAltitude << ", heading=" << position.m_fHeading << endl;
	// fout << " second = " << tv.tv_sec << " microsecond = " <<  tv.tv_usec << " counterTemp= " << counterTemp <<endl;
}

void GetLane_datasRecord(ofstream& fout, LIST_LANEMODELS *pListLanes, struct timeval& tv, unsigned int& counterTemp)
{
	vector<Av3hr_LaneModel>::iterator ite_LaneModel;
  map<Av3hr_laneidx_t, Av3hr_LaneInfo>::iterator ite_LaneInfo;
  vector< Av3hr_WGS84Point>::iterator ite_Points;

  fout << " second = " << tv.tv_sec << " microsecond = " <<  tv.tv_usec << " counterTemp= " << counterTemp <<endl;
  fout << "laneModelSize= " << (*pListLanes).size() << endl;

  for(ite_LaneModel = (*pListLanes).begin(); ite_LaneModel != (*pListLanes).end(); ++ite_LaneModel)
  {
    fout << "listLaneModel_index= " << ite_LaneModel - (*pListLanes).begin() << " ";
    fout << "listLaneModel: TotalNum=" << (int)ite_LaneModel->m_iTotalNumberOfLanes << " size=" << ite_LaneModel->m_iSize << endl;
    
    for(ite_LaneInfo= ite_LaneModel->m_mapLaneInfos.begin(); ite_LaneInfo!= ite_LaneModel->m_mapLaneInfos.end(); ++ite_LaneInfo)
    {

      fout << "laneLength= " << ite_LaneInfo->second.m_iLength << endl;
      
      #if not_out_flag_dots
      fout << "left lane size = " << ite_LaneInfo->second.m_stLeftBoundary.m_pLineGeometry.m_vPoints.size() << endl;
      fout << "right lane size = " << ite_LaneInfo->second.m_stRightBoundary.m_pLineGeometry.m_vPoints.size() << endl;
      #else
      fout << "laneInfo: laneNum=" << (int)ite_LaneInfo->second.m_iLaneNumber << " length=" << ite_LaneInfo->second.m_iLength << endl;
      fout << "left lane: crood=" << endl;//输出经纬度点
      for(ite_Points= ite_LaneInfo->second.m_stLeftBoundary.m_pLineGeometry.m_vPoints.begin(); ite_Points!= ite_LaneInfo->second.m_stLeftBoundary.m_pLineGeometry.m_vPoints.end(); ++ite_Points)
      {
        fout << setiosflags(ios::fixed) << setprecision(7) <<ite_Points->m_stPoint.fLongitude << "," 
         <<setiosflags(ios::fixed) << setprecision(7) << ite_Points->m_stPoint.fLatitude << ";";
      }
      fout << "right lane: crood=" << endl;//输出经纬度点
      for(ite_Points= ite_LaneInfo->second.m_stRightBoundary.m_pLineGeometry.m_vPoints.begin(); 
        ite_Points!= ite_LaneInfo->second.m_stRightBoundary.m_pLineGeometry.m_vPoints.end(); ++ite_Points)
      {
        fout << setiosflags(ios::fixed) << setprecision(7) <<ite_Points->m_stPoint.fLongitude << "," 
         <<setiosflags(ios::fixed) << setprecision(7) << ite_Points->m_stPoint.fLatitude << ";";
      }
      #endif
    }
  }
}


void GetSpeedLimit_datasRecord(ofstream& fout, LIST_SPEEDLIMITS* plistSpeedLimits, struct timeval& tv, unsigned int& counterTemp)
{
	fout << "speedLimit size" << (*plistSpeedLimits).size() << endl;
	std::vector<Av3hr_ExtendedSpeedLimit>::iterator ite;
  
  if( (*plistSpeedLimits).size() > 0)
  {
    for(ite = (*plistSpeedLimits).begin(); ite != (*plistSpeedLimits).end(); ++ite)
    {
      fout << "speedLimit: value=" << ite->m_stValue.m_ivalue << " offset=" <<ite->m_iOffset <<endl;
    }
  }
}


void GetCurrentLane_datasRecord(ofstream& fout, Av3hr_LaneInfo& pLane, struct timeval& tv, unsigned int& counterTemp )
{
	vector<Av3hr_WGS84Point>::iterator its_WGS84Point_temp;
	vector<Av3hr_Linear>::iterator its_l, its_r;

  // file << " second = " << tv.tv_sec << " microsecond = " <<  tv.tv_usec << " counterTemp= " << counterTemp <<endl;
  fout << "current lane: number=" << (int)pLane.m_iLaneNumber << ", type=" << pLane.m_eType << endl;
  fout << "left boundary: type=" << pLane.m_stLeftBoundary.m_pLineObj.m_eType << endl;//中心线,车道线,马路牙子,栅栏等等
  
  for( its_l = pLane.m_stLeftBoundary.m_pLineObj.m_vLinears.begin(); its_l != pLane.m_stLeftBoundary.m_pLineObj.m_vLinears.end(); ++its_l)
  {
    // Av3hr_Linear& linear = (*its_l);
    fout << "left boundary: marking=" << its_l->m_eMarking << ", color=" << its_l->m_eColour << endl;//单虚线,双虚线,单实线等等
  }

  #if not_out_flag_dots
  fout << "left lane size = " << pLane.m_stLeftBoundary.m_pLineGeometry.m_vPoints.size() << endl;
  #else
  fout << "left boundary: crood=" << endl;//输出经纬度点
  for( its_WGS84Point_temp=pLane.m_stLeftBoundary.m_pLineGeometry.m_vPoints.begin(); its_WGS84Point_temp!=pLane.m_stLeftBoundary.m_pLineGeometry.m_vPoints.end(); ++its_WGS84Point_temp)
  {
    fout << setiosflags(ios::fixed) << setprecision(7) <<its_WGS84Point_temp->m_stPoint.fLongitude << "," <<setiosflags(ios::fixed) << setprecision(7) << its_WGS84Point_temp->m_stPoint.fLatitude << ";";
  }
  fout << endl;
  #endif

  fout << "right boundary: type=" << pLane.m_stRightBoundary.m_pLineObj.m_eType << endl;
  for (its_r = pLane.m_stRightBoundary.m_pLineObj.m_vLinears.begin(); its_r != pLane.m_stRightBoundary.m_pLineObj.m_vLinears.end(); ++its_r)
  {
    // Av3hr_Linear& linear = (*its_r);
    fout << "right boundary: marking=" << its_r->m_eMarking << ", color=" << its_r->m_eColour << endl;
  }
  
  #if not_out_flag_dots
  fout << "right lane size = " << pLane.m_stRightBoundary.m_pLineGeometry.m_vPoints.size() << endl;
  #else
  fout << "right boundary: crood=" << endl;//输出经纬度点
  for( its_WGS84Point_temp = pLane.m_stRightBoundary.m_pLineGeometry.m_vPoints.begin(); its_WGS84Point_temp != pLane.m_stRightBoundary.m_pLineGeometry.m_vPoints.end(); ++its_WGS84Point_temp)
  {
    fout << setiosflags(ios::fixed) << setprecision(7) <<its_WGS84Point_temp->m_stPoint.fLongitude << "," <<setiosflags(ios::fixed) << setprecision(7) << its_WGS84Point_temp->m_stPoint.fLatitude << ";";
  }
  fout << endl;
  #endif

  // leftNeighbourLane = iLaneNumber +1;
  // rightNeighbourLane = iLaneNumber-1;
  // fout << "left neighbour boundary: crood=" << endl;//输出经纬度点
  // for(its_WGS84Point_temp = listLanes[leftNeighbourLane].m_mapLaneInfos.m_stLeftBoundary.m_pLineGeometry.m_vPoints.begin();
  //   its_WGS84Point_temp != listLanes[leftNeighbourLane].m_mapLaneInfos.m_stLeftBoundary.m_pLineGeometry.m_vPoints.end(); ++its_WGS84Point_temp)
  // {
  //   fout << setiosflags(ios::fixed) << setprecision(7) <<its_WGS84Point_temp->m_stPoint.fLongitude << "," 
  //     <<setiosflags(ios::fixed) << setprecision(7) << its_WGS84Point_temp->m_stPoint.fLatitude << ";";
  // }
  // fout << endl;

  // fout << "right neighbour boundary: crood=" << endl;//输出经纬度点
  // for(its_WGS84Point_temp = listLanes[rightNeighbourLane].m_mapLaneInfos.m_stRightBoundary.m_pLineGeometry.m_vPoints.begin();
  //   its_WGS84Point_temp != listLanes[rightNeighbourLane].m_mapLaneInfos.m_stRightBoundary.m_pLineGeometry.m_vPoints.end(); ++its_WGS84Point_temp)
  // {
  //   point_temp = (*its_WGS84Point_temp);
  //   fout << setiosflags(ios::fixed) << setprecision(7) <<its_WGS84Point_temp->m_stPoint.fLongitude << "," 
  //     <<setiosflags(ios::fixed) << setprecision(7) << its_WGS84Point_temp->m_stPoint.fLatitude << ";";
  // }
  // fout << endl;

}

void GetLaneWidth_datasRecord(ofstream& fout, me_int32& laneWidth, struct timeval& tv, unsigned int& counterTemp)
{
	// fout << " second = " << tv.tv_sec << " microsecond = " <<  tv.tv_usec << " counterTemp= " << counterTemp <<endl;
  fout << "laneWidth=" << laneWidth << endl;
}

void GetCurvature_datasRecord(ofstream& fout, MAP_OFFSETFLOAT *plistCurvature, struct timeval& tv, unsigned int& counterTemp)
{
	// fout << " second = " << tv.tv_sec << " microsecond = " <<  tv.tv_usec << " counterTemp= " << counterTemp <<endl;
	MAP_OFFSETFLOAT::iterator its;
  #if not_out_flag_dots
  fout << "listCurvatureSize= " << (*plistCurvature).size() << endl;
  #else
  for (its = ( *plistCurvature ).begin(); its != ( *plistCurvature ).end(); ++its)
  {
    fout << "curvature: offset=" << its->first << ", value=" << its->second << endl;
  }
  #endif
}

void GetNextRamp_datasRecord(ofstream& fout, Av3hr_offset_t& iOffset, struct timeval& tv, unsigned int& counterTemp)
{
	// fout << " second = " << tv.tv_sec << " microsecond = " <<  tv.tv_usec << " counterTemp= " << counterTemp <<endl;
  fout << "in ramp: offset=" << iOffset << endl;
}

void GetFormOfWay_datasRecord(ofstream& fout, Av3hr_eFormOfWay& eRoadType, struct timeval& tv, unsigned int& counterTemp)
{
	// fout << " second = " << tv.tv_sec << " microsecond = " <<  tv.tv_usec << " counterTemp= " << counterTemp <<endl;
  fout << "FormOfWay: type=" << eRoadType << endl;
}



