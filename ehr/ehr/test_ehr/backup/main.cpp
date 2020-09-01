#include <QCoreApplication>
#include <QTextStream>
#include <unistd.h>
#include <limits.h>

#include "API.h"

#define OFFSETMAX 10000000


static QTextStream cout(stdout, QIODevice::WriteOnly);
static QTextStream cin(stdin, QIODevice::ReadOnly);

int main(int argc, char *argv[])
{
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

    while (true)
    {
        Av3hr_eMapStatus eStatus;
        if (Av3HR_IsChanged(eStatus))
        {
            if (eStatus == Av3hr_eMapStatus_Create)
            {
                if (iPathId != Av3HR_GetMainPathID())
                {
                    iPathId = Av3HR_GetMainPathID();
                    iEndOffset = 0;
                    cout << "main path ID: " << iPathId << endl;
                }
                bIsStart = true;
            }
        }


        Av3hr_Position position;
        if (Av3HR_GetPosition(&position) == Av3HR_OK)
        {
#if 1
            cout << "position: [pathid=" << position.m_iPathId << "], [offset=" << position.m_iOffset << "], " << "[lane=" << position.m_iCurrentLane << "], "
                 << "[crood=" << position.m_stCrd.m_stPoint.fLongitude << "," << position.m_stCrd.m_stPoint.fLatitude << "," << position.m_stCrd.m_stPoint.fAltitude << "], "
                 << "[heading=" << position.m_fHeading << "]" << endl;
#endif
        }


        // 当加载的数据小于 1km 时, 重新加载 2km 的数据
        if (bIsStart && (iEndOffset < position.m_iOffset || (iEndOffset - position.m_iOffset) < 100000))
        {
            if (iEndOffset > 0)
            {
                cout << "remaining offset: " << iEndOffset - position.m_iOffset << endl;
            }

            // 示例1： 获取车道组数据集
            {
                // iLoadOffsetS : 需要加载数据的起始 offset 位置
                // iLoadOffsetE : 需要加载数据的结束 offset 位置
                iLoadOffsetS = position.m_iOffset;
                iLoadOffsetE = iLoadOffsetS + 200000; // 2km
                iEndOffset = iLoadOffsetE;
                if (Av3HR_PathOffset(iPathId, iLoadOffsetS, iLoadOffsetE) == Av3HR_OK)
                {
                    cout << "load data offsetS: " << iLoadOffsetS << ", offsetE: " << iLoadOffsetE << endl;

                    // 获取车道信息
                    LIST_LANEMODELS listLanes;
                    if (Av3HR_GetLane(&listLanes) == Av3HR_OK)
                    {
#if 1
                        cout << "lane section size: " << listLanes.size() << endl;
#endif
                    }

                    // 获取节点信息
                    LIST_NODES listNodes;
                    if (Av3HR_GetNode(&listNodes) == Av3HR_OK)
                    {
#if 1
                        cout << "node size: " << listNodes.size() << endl;
#endif
                    }

                    // 获取交通标示牌信息
                    LIST_TRAFFICSIGNS listTrafficSigns;
                    if (Av3HR_GetTrafficSign(&listTrafficSigns) == Av3HR_OK)
                    {
#if 1
                        cout << "traffic sign size: " << listTrafficSigns.size() << endl;
#endif
                    }

                    // 获取红绿灯信息
                    LIST_TRAFFICLIGHTS listTrafficLights;
                    if (Av3HR_GetTrafficLight(&listTrafficLights) == Av3HR_OK)
                    {
#if 1
                        cout << "traffic light size: " << listTrafficLights.size() << endl;
#endif
                    }

                    // 获取限速警告信息
                    LIST_SPEEDLIMITS listSpeedLimits;
                    if (Av3HR_GetSpeedLimit(&listSpeedLimits) == Av3HR_OK)
                    {
#if 1
                        cout << "speed limit sign size: " << listSpeedLimits.size() << endl;
#endif
                    }

                    // 获取用于定位的地物信息
                    LIST_LOCATIONOBJECTS listLocationObjects;
                    if (Av3HR_GetLocationObject(&listLocationObjects) == Av3HR_OK)
                    {
#if 1
                        cout << "location object size: " << listLocationObjects.size() << endl;
#endif
                    }
                }
            }
        }


        // 获取实时信息
        {
            // 示例2： 获取当前车道信息
            {
                Av3hr_LaneInfo pLane;
                if (Av3HR_GetCurrentLane(&pLane) == Av3HR_OK)
                {
#if 1
                    // 以下逻辑只为输出log
                    {
                        Av3hr_laneidx_t iLaneNumber, iLaneNumberLast;
                        iLaneNumberLast = 0;
                        iLaneNumber = pLane.m_iLaneNumber;
                        if (iLaneNumber != iLaneNumberLast)
                        {
                            cout << "current lane: number=" << iLaneNumber << ", type=" << pLane.m_eType << endl;

                            cout << "left boundary: type=" << pLane.m_stLeftBoundary.m_pLineObj.m_eType << endl;
                            for (std::vector<Av3hr_Linear>::iterator its_l = pLane.m_stLeftBoundary.m_pLineObj.m_vLinears.begin(); its_l != pLane.m_stLeftBoundary.m_pLineObj.m_vLinears.end(); ++its_l)
                            {
                                Av3hr_Linear& linear = (*its_l);
                                cout << "left boundary: marking=" << linear.m_eMarking << ", color=" << linear.m_eColour << endl;
                            }
                            cout << "left boundary: points size=" << pLane.m_stLeftBoundary.m_pLineGeometry.m_iPointSize << endl;
                            for (std::vector<Av3hr_LineGrid>::iterator its_l = pLane.m_stLeftBoundary.m_pLineGeometry.m_vLineGrid.begin(); its_l != pLane.m_stLeftBoundary.m_pLineGeometry.m_vLineGrid.end(); ++its_l)
                            {
                                Av3hr_LineGrid& linegrid = (*its_l);
                                cout << "left boundary: start index=" << linegrid.m_iIndexS << ", end index=" << linegrid.m_iIndexE << endl;
                            }

                            cout << "right boundary: type=" << pLane.m_stRightBoundary.m_pLineObj.m_eType << endl;
                            for (std::vector<Av3hr_Linear>::iterator its_r = pLane.m_stRightBoundary.m_pLineObj.m_vLinears.begin(); its_r != pLane.m_stRightBoundary.m_pLineObj.m_vLinears.end(); ++its_r)
                            {
                                Av3hr_Linear& linear = (*its_r);
                                cout << "right boundary: marking=" << linear.m_eMarking << ", color=" << linear.m_eColour << endl;
                            }
                            cout << "right boundary: points size=" << pLane.m_stRightBoundary.m_pLineGeometry.m_iPointSize << endl;
                            for (std::vector<Av3hr_LineGrid>::iterator its_r = pLane.m_stRightBoundary.m_pLineGeometry.m_vLineGrid.begin(); its_r != pLane.m_stRightBoundary.m_pLineGeometry.m_vLineGrid.end(); ++its_r)
                            {
                                Av3hr_LineGrid& linegrid = (*its_r);
                                cout << "right boundary: start index=" << linegrid.m_iIndexS << ", end index=" << linegrid.m_iIndexE << endl;
                            }

                            iLaneNumberLast = iLaneNumber;
                        }
                    }
#endif
                }
            }

            // 示例3： 获取前方一定范围的边线信息
            {
                Av3hr_offset_t iOffset = 4000;  // 单位：cm
                Av3hr_LaneLine leftLaneLine;
                Av3hr_LaneLine rightLaneLine;
                if (Av3HR_GetLaneLine(iOffset, &leftLaneLine, &rightLaneLine) == Av3HR_OK)
                {
#if 1
                    // 以下逻辑只为输出log
                    {
                        me_int iCount = leftLaneLine.m_pLineObj.m_vLinears.size();
                        for (me_int i = 0;  i < iCount; i++)
                        {
                            cout << "left lane line: type=" << leftLaneLine.m_pLineObj.m_vLinears[i].m_eMarking << ", color=" << leftLaneLine.m_pLineObj.m_vLinears[i].m_eColour << ", offset=" << leftLaneLine.m_pLineObj.m_vOffsets[i] << endl;
                            cout << "left lane line: point size=" << leftLaneLine.m_pLineGeometry.m_iPointSize << endl;
                        }

                        iCount = rightLaneLine.m_pLineObj.m_vLinears.size();
                        for (me_int i = 0;  i < iCount; i++)
                        {
                            cout << "right lane line: type=" << rightLaneLine.m_pLineObj.m_vLinears[i].m_eMarking << ", color=" << rightLaneLine.m_pLineObj.m_vLinears[i].m_eColour << ", offset=" << rightLaneLine.m_pLineObj.m_vOffsets[i] << endl;
                            cout << "right lane line: point size=" << rightLaneLine.m_pLineGeometry.m_iPointSize << endl;
                        }
                    }
#endif
                }
            }

            // 示例4： 获取前方一定范围的曲率信息
            {
                Av3hr_offset_t iOffset = 3000;  // 单位：cm
                MAP_OFFSETFLOAT listCurvature;
                if (Av3HR_GetCurvature(iOffset, &listCurvature) == Av3HR_OK)
                {
#if 1
                    // 以下逻辑只为输出log
                    {
                        for (MAP_OFFSETFLOAT::iterator its = listCurvature.begin(); its != listCurvature.end(); ++its)
                        {
                            cout << "curvature: offset=" << its->first << ", value=" << its->second << endl;
                        }
                    }
#endif
                }
            }

            // 示例5： 获取前方坡度信息
            {
                Av3hr_offset_t iOffset = 3000;  // 单位：cm
                MAP_OFFSETFLOAT listSlope;
                if (Av3HR_GetSlope(iOffset, &listSlope) == Av3HR_OK)
                {
#if 1
                    // 以下逻辑只为输出log
                    {
                        for (MAP_OFFSETFLOAT::iterator its = listSlope.begin(); its != listSlope.end(); ++its)
                        {
                            cout << "slope: offset=" << its->first << ", value=" << its->second << endl;
                        }
                    }
#endif
                }
            }

            // 示例6： 获取当前路径中的下一个停止线信息
            {
                Av3hr_offset_t iOffset = 0;  // 单位：cm
                Av3hr_LocationObject stopline;
                if (Av3HR_GetNextStopline(iOffset, &stopline) == Av3HR_OK)
                {
#if 1
                    cout << "location object: type=" << stopline.m_eType << ", offset=" << iOffset << endl;
#endif
                }
            }

            // 示例7： 获取当前路径中的下一个汇合路段
            {
                Av3hr_offset_t iOffset = 0;  // 单位：cm
                if (Av3HR_GetNextConfluenceSection(iOffset) == Av3HR_OK)
                {
#if 1
                    cout << "next confluence: offset=" << iOffset << endl;
#endif
                }
            }

            // 示例8： 获取当前路径中的下一个匝道路段
            {
                Av3hr_offset_t iOffset = 0;  // 单位：cm
                if (Av3HR_GetNextRamp(Av3hr_FormOfWay_InHighWayRamp, iOffset) == Av3HR_OK)
                {
#if 1
                    cout << "in ramp: offset=" << iOffset << endl;
#endif
                }

                if (Av3HR_GetNextRamp(Av3hr_FormOfWay_OutHighWayRamp, iOffset) == Av3HR_OK)
                {
#if 1
                    cout << "off ramp: offset=" << iOffset << endl;
#endif
                }
            }

            // 示例9： 获取当前道路类型
            {
                Av3hr_eFormOfWay eRoadType;
                if (Av3HR_GetFormOfWay(eRoadType) == Av3HR_OK)
                {
#if 1
                    cout << "road FormOfWay: type=" << eRoadType << endl;
#endif
                }
            }
        }


        // 10ms
        usleep(10000);
    }

    Av3HR_API_Destroy();

    return 0;
}
