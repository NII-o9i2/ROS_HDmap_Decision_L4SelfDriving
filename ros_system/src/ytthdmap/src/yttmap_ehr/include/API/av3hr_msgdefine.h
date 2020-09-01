#ifndef _AV3HR_MESDEFINE_H_
#define _AV3HR_MESDEFINE_H_


#include <vector>
#include "ME_pubhead.h"
#include "av3hr_msgconstants.h"
#include <stddef.h>


class Av3hr_WGS84Point
{
public:
    me_int32 m_iLongitude;               // East positive, 2^32 is 360 degrees.
    me_int32 m_iLatitude;                // North positive, 2^32 is 360 degrees.
    me_int32 m_iAltitude;                // above the reference ellipsoid   unit: cm

    CMGEOCOORD m_stPoint;

    Av3hr_WGS84Point()
    {
        Clear();
    }

    Av3hr_WGS84Point& operator = (const Av3hr_WGS84Point& point)
    {
        this->m_iLongitude  = point.m_iLongitude;
        this->m_iLatitude   = point.m_iLatitude;
        this->m_iAltitude   = point.m_iAltitude;
        this->m_stPoint     = point.m_stPoint;

        return *this;
    }

    void Clear()
    {
        m_iLongitude    = INVALID_COORDINATE;
        m_iLatitude     = INVALID_COORDINATE;
        m_iAltitude     = 0;
        m_stPoint.Clear();
    }
};

class Av3hr_VehiclePosition : public Av3hr_WGS84Point
{
public:
    me_uint32           m_iCyclicCounter;
    Av3hr_timestamp_t   m_iTimestamp;	// coming from Vehicle Time Master
    me_float            m_fHeading;

    Av3hr_VehiclePosition()
    {
        m_iCyclicCounter    = 0;
        m_iTimestamp        = 0;
        m_fHeading          = 0.0f;
    }
};

class Av3hr_Vector
{
public:
    me_float m_fX;                      // forward
    me_float m_fY;                      // to the right
    me_float m_fZ;                      // up

    Av3hr_Vector()
    {
        Clear();
    }

    void Clear()
    {
        m_fX    = 0.0f;
        m_fY    = 0.0f;
        m_fZ    = 0.0f;
    }
};

/********************** v3_PositionMessage  *********************/
class Av3hr_Position
{
public:
    me_uint32                   m_iCyclicCounter;
    Av3hr_timestamp_t           m_iTimestamp;
    Av3hr_timestamp_t           m_iPositionAge;
    Av3hr_pathid_t              m_iPathId;
    Av3hr_offset_t              m_iOffset;
    Av3hr_distance_t            m_iAccuracy;
    me_int32                    m_iDeviation;
    Av3hr_vehiclespeed_t        m_fSpeed;
    Av3hr_angle_t               m_fRelativeHeading;
    Av3hr_angle_t               m_fHeading;
    Av3hr_laneidx_t             m_iCurrentLane;
    Av3hr_pathid_t              m_iPreferredPath;
    Av3hr_WGS84Point            m_stCrd;

    Av3hr_Position()
    {
        Clear();
    }

    void Clear()
    {
        m_iCyclicCounter        = 0;
        m_iTimestamp            = 0;
        m_iPositionAge          = 0;
        m_iPathId               = INVALID_PATHID;
        m_iOffset               = INVALID_OFFSET;
        m_iAccuracy             = 0;
        m_iDeviation            = 0;
        m_fSpeed                = 0.0;
        m_fRelativeHeading      = 0.0;
        m_fHeading              = 0.0;
        m_iCurrentLane          = 0;
        m_iPreferredPath        = INVALID_PATHID;

        m_stCrd.Clear();
    }
};


/********************** v3_ProfileMessage  *********************/

class Av3hr_ProfileValue
{
public:
    me_uint32           m_iCyclicCounter;
    Av3hr_eProfileType  m_iType;

    Av3hr_ProfileValue()
    {
        m_iCyclicCounter    = 0;
        m_iType             = Av3hr_ProfileType_NA;
    }
    ~Av3hr_ProfileValue()
    {
    }
};

class Av3hr_AbsoluteVehiclePosition : public Av3hr_ProfileValue
{
public:
    Av3hr_timestamp_t           m_iTimestamp;
    Av3hr_angle_t               m_fHeading;
    Av3hr_WGS84Point            m_stCrd;

    Av3hr_AbsoluteVehiclePosition()
    {
        m_iTimestamp            = 0;
        m_fHeading              = 0.0;
    }
};

class Av3hr_OffsetFloatEntry
{
public:
    Av3hr_offset_t              m_iOffset;
    me_float                    m_fValue;

    Av3hr_OffsetFloatEntry()
    {
        Clear();
    }
    ~Av3hr_OffsetFloatEntry()
    {
        Clear();
    }

    void Clear()
    {
        m_iOffset               = INVALID_OFFSET;
        m_fValue                = 0.0;
    }
};


class Av3hr_NodeArm
{
public:
    me_uint32                       m_iCyclicCounter;
    Av3hr_pathid_t                  m_iPathId;
    Av3hr_offset_t                  m_iOffset;
    Av3hr_pathid_t                  m_iSubPath;
    me_float                        m_fProbability;
    me_bool                         m_bIsComplexIntersection;
    Av3hr_eRightOfWay               m_eRightOfWay;
    Av3hr_angle_t                   m_fTurnAngle;
    Av3hr_eTurnInfo                 m_eTurnInfo;

    Av3hr_NodeArm()
    {
        Clear();
    }

    void Clear()
    {
        m_iCyclicCounter            = 0;
        m_iPathId                   = INVALID_PATHID;
        m_iOffset                   = INVALID_OFFSET;
        m_iSubPath                  = INVALID_PATHID;
        m_fProbability              = 0.0;
        m_bIsComplexIntersection    = false;
        m_eRightOfWay               = Av3hr_RightOfWay_Unknown;
        m_fTurnAngle                = 0.0;
        m_eTurnInfo                 = Av3hr_TurnInfo_Unknown;
    }
};

class Av3hr_Node : public Av3hr_ProfileValue
{
public:
    std::vector<Av3hr_NodeArm>  m_vNodeArms;
    me_uint16                   m_iSize;

    Av3hr_Node()
    {
        Clear();
    }

    ~Av3hr_Node()
    {
        Clear();
    }

    void Clear()
    {
        m_iSize = 0;
        m_vNodeArms.clear();
    }
};


class Av3hr_Linear
{
public:
    Av3hr_eLineMarking          m_eMarking;
    Av3hr_eLineMarkingColour    m_eColour;

    Av3hr_Linear()
    {
        Clear();
    }

    void Clear()
    {
        m_eMarking              = Av3hr_LineMarking_Unknown;
        m_eColour               = Av3hr_LineMarkingColour_NA;
    }
};

class Av3hr_LinearObject
{
public:
    Av3hr_lineid_t              m_iLineId;
    Av3hr_eLinearObjectType     m_eType;
    std::vector<Av3hr_Linear>   m_vLinears;
    std::vector<Av3hr_offset_t> m_vOffsets;

    Av3hr_LinearObject()
    {
        Clear();
    }

    void Clear()
    {
        m_iLineId               = INVALID_LINEID;
        m_eType                 = Av3hr_LinearObjectType_NA;
        m_vLinears.clear();
        m_vOffsets.clear();
    }
};

class Av3hr_LinearObjectDefinition : public Av3hr_ProfileValue
{
public:
    std::vector<Av3hr_LinearObject>     m_vLinearObjects;
    me_uint16                           m_iSize;

    Av3hr_LinearObjectDefinition()
    {
        m_iSize = 0;
        m_vLinearObjects.clear();
    }
};


class Av3hr_LineGrid
{
public:
    me_uint16                           m_iIndexS;
    me_uint16                           m_iIndexE;

    Av3hr_LineGrid()
    {
        Clear();
    }

    void Clear()
    {
        m_iIndexS                       = 0;
        m_iIndexE                       = 0;
    }
};

class Av3hr_LineGeometry
{
public:
    Av3hr_lineid_t                      m_iLineId;
    Av3hr_eCurveType                    m_eCurveType;
    me_uint32                           m_iPointSize;
    std::vector<Av3hr_WGS84Point>       m_vPoints;
    std::vector<Av3hr_LineGrid>         m_vLineGrid;

    Av3hr_LineGeometry()
    {
        Clear();
    }

    void Clear()
    {
        m_iLineId                       = INVALID_LINEID;
        m_eCurveType                    = Av3hr_CurveType_NotPresent;
        m_iPointSize                    = 0;
        m_vPoints.clear();
        m_vLineGrid.clear();
    }
};


class Av3hr_LanesGeometry : public Av3hr_ProfileValue
{
public:
    std::vector<Av3hr_LineGeometry>     m_vGeometries;
    me_uint16                           m_iSize;

    Av3hr_LanesGeometry()
    {
        m_iSize = 0;
        m_vGeometries.clear();
    }
};

class Av3hr_LaneLine
{
public:
    Av3hr_LinearObject m_pLineObj;
    Av3hr_LineGeometry m_pLineGeometry;

    void Clear()
    {
        m_pLineObj.Clear();
        m_pLineGeometry.Clear();
    }
};

class Av3hr_LaneInfo;
typedef std::map<Av3hr_laneidx_t /* m_iLaneNumber */, Av3hr_LaneInfo>   MAP_LANECONNECTIVITY;
typedef std::map<Av3hr_offset_t, me_float>                              MAP_OFFSETFLOAT;

class Av3hr_LaneInfo
{
public:
    Av3hr_laneidx_t             m_iLaneNumber;
    me_bool                     m_bIsPartOfCalculatedRoute;
    Av3hr_eLaneType             m_eType;
    Av3hr_eLaneDirection        m_eDirection;
    Av3hr_eLaneTransition       m_eTransition;
    Av3hr_LaneLine              m_stCenterline;
    Av3hr_LaneLine              m_stLeftBoundary;
    Av3hr_LaneLine              m_stRightBoundary;
    me_uint32                   m_iLength;
    MAP_LANECONNECTIVITY        m_mapLaneIN;
    MAP_LANECONNECTIVITY        m_mapLaneOUT;
    MAP_OFFSETFLOAT             m_mapCurvature;
    MAP_OFFSETFLOAT             m_mapSlope;

    Av3hr_LaneInfo()
    {
        Clear();
    }

    ~Av3hr_LaneInfo()
    {
        Clear();
    }

    void Clear()
    {
        m_iLaneNumber               = INVALID_LANEID;
        m_eType                     = Av3hr_LaneType_Unknown;
        m_eDirection                = Av3hr_LaneDirection_None;
        m_eTransition               = Av3hr_LaneTransition_None;
        m_iLength                   = 0;
        m_bIsPartOfCalculatedRoute  = false;

        m_mapLaneIN.clear();
        m_mapLaneOUT.clear();
        m_mapCurvature.clear();
        m_mapSlope.clear();

        m_stCenterline.Clear();
        m_stLeftBoundary.Clear();
        m_stRightBoundary.Clear();
    }
};

class Av3hr_LaneModel
{
public:
    std::map<Av3hr_laneidx_t /* LaneNumber */, Av3hr_LaneInfo>  m_mapLaneInfos;
    me_uint16                                                   m_iSize;
    me_uint8                                                    m_iTotalNumberOfLanes;
    me_uint32                                                   m_iCyclicCounter;

    Av3hr_LaneModel()
    {
        Clear();
    }

    ~Av3hr_LaneModel()
    {
        Clear();
    }

    void Clear()
    {
        m_mapLaneInfos.clear();
        m_iSize                 = 0;
        m_iCyclicCounter        = 0;
        m_iTotalNumberOfLanes   = 0;
    }
};


class Av3hr_LaneConnectivityPair
{
public:
    Av3hr_pathid_t              m_iInitialPath;
    Av3hr_laneidx_t             m_iInitialLaneNumber;
    Av3hr_pathid_t              m_iNewPath;
    Av3hr_laneidx_t             m_iNewLaneNumber;

    Av3hr_LaneConnectivityPair()
    {
        m_iInitialPath          = INVALID_PATHID;
        m_iInitialLaneNumber    = INVALID_LANEID;
        m_iNewPath              = INVALID_PATHID;
        m_iNewLaneNumber        = INVALID_LANEID;
    }
};

class Av3hr_LaneConnectivity : public Av3hr_ProfileValue
{
public:
    std::vector<Av3hr_LaneConnectivityPair>     m_vConnectivityPairs;
    me_uint16                                   m_iSize;

    Av3hr_LaneConnectivity()
    {
        m_iSize = 0;
        m_vConnectivityPairs.clear();
    }
};



class Av3hr_Condition
{
public:
    Av3hr_eConditionType                m_eType;
    Av3hr_eYesNoUnknown                 m_eAppliesToEgoVehicle;
    me_uint32                           m_iValue;
    Av3hr_eRoadAccessFlags              m_eVehicleTypeMask;
    Av3hr_eLoad                         m_eLoad;
    me_uint16                           m_iStartMinutes;
    me_uint16                           m_iEndMinutes;
    Av3hr_eWeather                      m_eWeather;
    Av3hr_eFuzzyTime                    m_eFuzzyTime;
    Av3hr_eLaneArrowMarking             m_eDirection;

    Av3hr_Condition()
    {
        Clear();
    }

    ~Av3hr_Condition()
    {
        Clear();
    }

    void Clear()
    {
        m_eType                         = Av3hr_ConditionType_Unknown;
        m_eAppliesToEgoVehicle          = Av3hr_YesNoUnknown_Unknown;
        m_iValue                        = 0;
        m_eVehicleTypeMask              = Av3hr_RoadAccessFlags_Unknown;
        m_eLoad                         = Av3hr_Load_NA;
        m_iStartMinutes                 = 0;
        m_iEndMinutes                   = 0;
        m_eWeather                      = Av3hr_Weather_Unknown;
        m_eFuzzyTime                    = Av3hr_FuzzyTime_Unknown;
        m_eDirection                    = Av3hr_LaneArrowMarking_None;
    }
};

class Av3hr_Speed
{
public:
    me_uint8                                    m_ivalue;
    Av3hr_UnitOfSpeed                           m_eUnit;

    Av3hr_Speed()
    {
        Clear();
    }

    void Clear()
    {
        m_ivalue                                = 0;
        m_eUnit                                 = Av3hr_UnitOfSpeed_KpH;
    }
};

class Av3hr_ExtendedSpeedLimit
{
public:
    me_uint32                                   m_iCyclicCounter;
    Av3hr_pathid_t                              m_iPathId;
    Av3hr_offset_t                              m_iOffset;
    Av3hr_Speed                                 m_stValue;
    Av3hr_SpeedLimitSource                      m_eSource;
    me_int16                                    m_iConditionSize;
    std::vector<Av3hr_Condition>                m_vConditions;

    Av3hr_ExtendedSpeedLimit()
    {
        Clear();
    }

    ~Av3hr_ExtendedSpeedLimit()
    {
        Clear();
    }

    void Clear()
    {
        m_iCyclicCounter                        = 0;
        m_iPathId                               = INVALID_PATHID;
        m_iOffset                               = INVALID_OFFSET;
        m_eSource                               = Av3hr_SpeedLimitSource_Unknown;
        m_iConditionSize                        = 0;
        m_stValue.Clear();
        m_vConditions.clear();
    }
};


class Av3hr_FunctionalRoadClass : public Av3hr_ProfileValue
{
public:
    Av3hr_eFunctionalRoadClass          m_eRoadClass;

    Av3hr_FunctionalRoadClass()
    {
        m_eRoadClass = Av3hr_RoadClass_Unknown;
    }
};

class Av3hr_FormOfWay : public Av3hr_ProfileValue
{
public:
    Av3hr_eFormOfWay                    m_eRoadType;

    Av3hr_FormOfWay()
    {
        m_eRoadType = Av3hr_FormOfWay_Unknown;
    }
};


class Av3hr_TrafficSign
{
public:
    me_uint32                           m_iCyclicCounter;
    Av3hr_pathid_t                      m_iPathId;
    Av3hr_offset_t                      m_iOffset;
    me_uint16                           m_iMajorType;
    me_uint16                           m_iMinorType;
    me_uint32                           m_iValue;
    Av3hr_eLateralPosition              m_eLocation;
    me_int32                            m_iShift;
    Av3hr_distance_t                    m_iDistance;
    Av3hr_distance_t                    m_iLength;
    me_uint16                           m_iPanelSize;
    std::vector<Av3hr_Condition>        m_vPanels;
    me_uint16                           m_iPointSize;
    std::vector<Av3hr_WGS84Point>       m_vPoints;

    Av3hr_TrafficSign()
    {
        Clear();
    }

    void Clear()
    {
        m_iCyclicCounter                = 0;
        m_iPathId                       = INVALID_PATHID;
        m_iOffset                       = INVALID_OFFSET;
        m_iMajorType                    = 0;
        m_iMinorType                    = 0;
        m_iValue                        = 0;
        m_eLocation                     = Av3hr_LateralPosition_Unknown;
        m_iShift                        = 0;
        m_iDistance                     = 0;
        m_iLength                       = 0;
        m_iPanelSize                    = 0;
        m_iPointSize                    = 0;
        m_vPanels.clear();
        m_vPoints.clear();
    }
};


class Av3hr_TrafficLight
{
public:
    me_uint32                                   m_iCyclicCounter;
    Av3hr_pathid_t                              m_iPathId;
    Av3hr_offset_t                              m_iOffset;
    Av3hr_eTrafficLightType                     m_eType;
    Av3hr_eTrafficLightLongitudinalPosition     m_eLongitudinalPosition;
    Av3hr_eLateralPosition                      m_eLateralPosition;
    Av3hr_eTrafficLightState                    m_eCurrentState;
    Av3hr_eYesNoUnknown                         m_eTurnOnRedAllowed;
    me_int16                                    m_iCycleTime;
    Av3hr_Vector                                m_stVector;
    Av3hr_WGS84Point                            m_stPoint;

    Av3hr_TrafficLight()
    {
        Clear();
    }

    void Clear()
    {
        m_iCyclicCounter                        = 0;
        m_iPathId                               = INVALID_PATHID;
        m_iOffset                               = INVALID_OFFSET;
        m_eType                                 = Av3hr_TrafficLightType_Unknown;
        m_eLongitudinalPosition                 = Av3hr_TrafficLightLongitudinalPosition_Unknown;
        m_eLateralPosition                      = Av3hr_LateralPosition_Unknown;
        m_eCurrentState                         = Av3hr_TrafficLightState_Unknown;
        m_eTurnOnRedAllowed                     = Av3hr_YesNoUnknown_Unknown;
        m_iCycleTime                            = 0;

        m_stVector.Clear();
        m_stPoint.Clear();
    }
};


class Av3hr_SpecialSituation : public Av3hr_ProfileValue
{
public:
    Av3hr_eSpecialSituationType                 m_eType;
    me_uint16                                   m_iPointSize;
    std::vector<Av3hr_WGS84Point>               m_vPoints;

    Av3hr_SpecialSituation()
    {
        m_eType                                 = Av3hr_SpecialSituationType_Unknown;
        m_iPointSize                            = 0;
        m_vPoints.clear();
    }
};


class Av3hr_LocationObject
{
public:
    me_uint32                                   m_iCyclicCounter;
    Av3hr_pathid_t                              m_iPathId;
    Av3hr_offset_t                              m_iOffset;
    Av3hr_eLocationObjectType                   m_eType;
    me_int32                                    m_iLateralOffset;
    me_uint16                                   m_iPointSize;
    std::vector<Av3hr_WGS84Point>               m_vPoints;

    Av3hr_LocationObject()
    {
        Clear();
    }

    void Clear()
    {
        m_iCyclicCounter                        = 0;
        m_iPathId                               = INVALID_PATHID;
        m_iOffset                               = INVALID_OFFSET;
        m_eType                                 = Av3hr_eLocationObjectType_OTHER;
        m_iLateralOffset                        = 0;
        m_iPointSize                            = 0;

        m_vPoints.clear();
    }
};


/********************** v3_ProfileMessage *********************/
class Av3hr_Profile
{
public:
    Av3hr_eProfileType                  m_eProfileType;
    me_bool                             m_bAvailable;
    Av3hr_instanceid_t                  m_iInstanceID;
    me_bool                             m_bIsRetransmission;
    Av3hr_eChangeMode                   m_eChange;
    me_float                            m_fConfidence;
    Av3hr_pathid_t                      m_iPathId;
    Av3hr_offset_t                      m_iOffset;
    Av3hr_offset_t                      m_iEndOffset;
    me_bool                             m_bEndOffsetFinal;
    Av3hr_eLaneDirection                m_eLaneDirection;
    std::vector<Av3hr_laneidx_t>        m_vLaneNumbers;
    Av3hr_ProfileValue*                 m_pProfilValue;

    Av3hr_Profile()
    {
        Release();
        m_iPathId                       = INVALID_PATHID;
        m_iOffset                       = INVALID_OFFSET;
    }

    void Release()
    {
        m_eProfileType                  = Av3hr_ProfileType_NA;
        m_bAvailable                    = false;
        m_iInstanceID                   = INVALID_INSTANCEID;
        m_bIsRetransmission             = false;
        m_eChange                       = Av3hr_ChangeMode_Create;
        m_iEndOffset                    = 0;
        m_bEndOffsetFinal               = false;
        m_eLaneDirection                = Av3hr_LaneDirection_None;
        m_pProfilValue                  = NULL;
        m_vLaneNumbers.clear();
    }
};


typedef std::vector<Av3hr_Profile*>                                     LIST_PROFILES;
typedef std::map<me_uint16 /* Av3hr_eProfileType */, LIST_PROFILES>     MAP_PROFILES;

typedef std::vector<Av3hr_LaneModel>                                    LIST_LANEMODELS;
typedef std::vector<Av3hr_TrafficSign>                                  LIST_TRAFFICSIGNS;
typedef std::vector<Av3hr_TrafficLight>                                 LIST_TRAFFICLIGHTS;
typedef std::vector<Av3hr_ExtendedSpeedLimit>                           LIST_SPEEDLIMITS;
typedef std::vector<Av3hr_NodeArm>                                      LIST_NODES;
typedef std::vector<Av3hr_LocationObject>                               LIST_LOCATIONOBJECTS;
typedef std::vector<Av3hr_WGS84Point>                                   LIST_POINTS;
typedef LIST_POINTS                                                     LIST_ROUTEPLACES;


class Av3hr_MessageData
{
public:
    LIST_LANEMODELS                     m_listLanes;
    LIST_NODES                          m_listNodes;
    LIST_SPEEDLIMITS                    m_listSpeedLimits;
    LIST_TRAFFICSIGNS                   m_listTrafficSigns;
    LIST_TRAFFICLIGHTS                  m_listTrafficLights;
    LIST_LOCATIONOBJECTS                m_listLocationObjects;

    Av3hr_MessageData()
    {
        Clear();
    }

    ~Av3hr_MessageData()
    {
        Clear();
    }

    void Clear()
    {
        m_listLanes.clear();
        m_listNodes.clear();
        m_listSpeedLimits.clear();
        m_listTrafficSigns.clear();
        m_listTrafficLights.clear();
        m_listLocationObjects.clear();
    }
};


#endif  // _AV3HR_MESDEFINE_H_
