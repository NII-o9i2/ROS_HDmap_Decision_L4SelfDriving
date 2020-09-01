#ifndef _API_H_
#define _API_H_

#include "av3hr_msgdefine.h"


EHR_API Av3hr_e Av3HR_API_Initialize();
EHR_API Av3hr_e Av3HR_API_Destroy();

EHR_API me_bool Av3HR_IsChanged(Av3hr_eMapStatus& eStatus);                                                                             // 判断是否有新的地图数据, 或地图数据已全部删除
EHR_API Av3hr_pathid_t Av3HR_GetMainPathID();                                                                                           // 获取主路径ID
EHR_API Av3hr_offset_t Av3HR_GetReferenceOffset();                                                                                      // 获取主路径上距离起点Section区间的参考偏移量

EHR_API Av3hr_e Av3HR_GetPosition(Av3hr_Position* pPosition);
EHR_API Av3hr_e Av3HR_GetProfiles(Av3hr_pathid_t iPathID, Av3hr_MessageData* pProfiles);

EHR_API Av3hr_e Av3HR_PathOffset(Av3hr_pathid_t iPathID, Av3hr_offset_t iOffsetS, Av3hr_offset_t iOffsetE);
EHR_API Av3hr_e Av3HR_GetLane(LIST_LANEMODELS* pListLanes);                                                                             // 获取车道信息
EHR_API Av3hr_e Av3HR_GetNode(LIST_NODES* pListNodes);                                                                                  // 获取节点信息
EHR_API Av3hr_e Av3HR_GetTrafficSign(LIST_TRAFFICSIGNS* pListTrafficSigns);                                                             // 获取交通标示牌信息
EHR_API Av3hr_e Av3HR_GetTrafficLight(LIST_TRAFFICLIGHTS* pListTrafficLights);                                                          // 获取红绿灯信息
EHR_API Av3hr_e Av3HR_GetSpeedLimit(LIST_SPEEDLIMITS* pListSpeedLimits);                                                                // 获取限速警告信息
EHR_API Av3hr_e Av3HR_GetLocationObject(LIST_LOCATIONOBJECTS* pListLocationObjects);                                                    // 获取用于定位的地物信息

EHR_API Av3hr_e Av3HR_GetCurrentLane(Av3hr_LaneInfo* pLane);                                                                            // 获取当前车道信息
EHR_API Av3hr_e Av3HR_GetLaneLine(Av3hr_offset_t iOffset, Av3hr_LaneLine* pLeftLaneLine, Av3hr_LaneLine* pRightLaneLine);               // 获取一定范围内的车道边线
EHR_API Av3hr_e Av3HR_GetCurvature(Av3hr_offset_t iOffset, MAP_OFFSETFLOAT* pListCurvature);                                            // 获取一定范围内的曲率值
EHR_API Av3hr_e Av3HR_GetSlope(Av3hr_offset_t iOffset, MAP_OFFSETFLOAT* pListSlope);                                                    // 获取一定范围内的坡度值
EHR_API Av3hr_e Av3HR_GetNextStopline(Av3hr_offset_t& iOffset, Av3hr_LocationObject* pStopline);                                        // 获取当前路径中的下一个停止线信息
EHR_API Av3hr_e Av3HR_GetNextConfluenceSection(Av3hr_offset_t& iOffset);                                                                // 获取当前路径中的下一个汇合路段
EHR_API Av3hr_e Av3HR_GetNextRamp(Av3hr_eFormOfWay eType, Av3hr_offset_t& iOffset);                                                     // 获取当前路径中的下一个匝道路段

EHR_API Av3hr_e Av3HR_GetRoute(LIST_LANEMODELS* pListLanes, me_bool bAll = false);                                                      // 获取路径规划结果
EHR_API Av3hr_e Av3HR_GetRoutePlaces(LIST_ROUTEPLACES* pListPlaces);                                                                    // 获取路径规划结果的起点、途径地、终点
EHR_API Av3hr_e Av3HR_GetRouteWholeLength(me_double* pLength);                                                                          // 获取路径规划结果的长度, 单位：m
EHR_API Av3hr_e Av3HR_GetRouteResultPoints(LIST_POINTS* pListPoints);                                                                   // 获取路径规划结果的形点串(显示)

EHR_API Av3hr_e Av3HR_GetLaneWidth(me_int32& iLaneWidth);                                                                               // 获取当前车道宽度
EHR_API Av3hr_e Av3HR_IsInsidComplexIntersection(me_bool& bInside);                                                                     // 判断是否在交叉路口内
EHR_API Av3hr_e Av3HR_IsTunnel(me_bool& bTunnel);                                                                                       // 判断是否是隧道
EHR_API Av3hr_e Av3HR_IsBridge(me_bool& bBridge);                                                                                       // 判断是否是桥梁
EHR_API Av3hr_e Av3HR_GetFormOfWay(Av3hr_eFormOfWay& eRoadType);                                                                        // 获取当前道路类型


#endif // _API_H_

