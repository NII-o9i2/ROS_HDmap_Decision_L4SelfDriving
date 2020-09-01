#ifndef _AV3HR_MESCONSTANTS_H_
#define _AV3HR_MESCONSTANTS_H_


enum Av3hr_SYNC_Status
{
    Av3hr_SYNC_None = 0,
    Av3hr_SYNC_Position = 1,
    Av3hr_SYNC_Profile = 2,
    Av3hr_SYNC_GlobalData = 3,
    Av3hr_SYNC_PathControl = 4,
};

enum Av3hr_e
{
    /*! Function was successfully executed. */
    Av3HR_OK = 0,
    /*! Function execution failed. */
    Av3HR_FAIL,
    /*! Function is not supported. */
    Av3HR_NOT_SUPPORTED,
    /*! Internal error occurred during function execution. */
    Av3HR_INTERNAL_ERROR,
 };

enum Av3hr_eMapStatus
{
    Av3hr_eMapStatus_None = 0,
    Av3hr_eMapStatus_Create = 1,
    Av3hr_eMapStatus_Update = 2,
    Av3hr_eMapStatus_Delete = 3,
};

enum Av3hr_eProfileType
{
    Av3hr_ProfileType_Node = 0,
    Av3hr_ProfileType_Probability = 1,
    Av3hr_ProfileType_HeadingChange = 2,
    Av3hr_ProfileType_LaneModel = 3,
    Av3hr_ProfileType_LaneConnectivity = 4,
    Av3hr_ProfileType_LinearObjects = 5,
    Av3hr_ProfileType_LanesGeometry = 6,
    Av3hr_ProfileType_LaneWidth = 7,
    Av3hr_ProfileType_RoadGeometry = 8,
    Av3hr_ProfileType_NumberOfLanesPerDirection = 9,
    Av3hr_ProfileType_ComplexIntersection = 10,
    Av3hr_ProfileType_LinkIdentifier = 11,
    Av3hr_ProfileType_FunctionalRoadClass = 12,
    Av3hr_ProfileType_RouteNumberTypes = 13,
    Av3hr_ProfileType_FormOfWay = 14,
    Av3hr_ProfileType_RoadAccessibility = 15,
    Av3hr_ProfileType_AccessRestriction = 16,
    Av3hr_ProfileType_OvertakingRestriction = 17,
    Av3hr_ProfileType_Tunnel = 18,
    Av3hr_ProfileType_Bridge = 19,
    Av3hr_ProfileType_DividedRoad = 20,
    Av3hr_ProfileType_Curvature = 21,
    Av3hr_ProfileType_Slope = 22,
    Av3hr_ProfileType_BuiltUpArea = 23,
    Av3hr_ProfileType_InTown = 24,
    Av3hr_ProfileType_Surface = 25,
    Av3hr_ProfileType_TrafficSign = 26,
    Av3hr_ProfileType_TrafficLight = 27,
    Av3hr_ProfileType_SpecialSituation = 28,
    Av3hr_ProfileType_EffectiveSpeedLimit = 29,
    Av3hr_ProfileType_ExtendedSpeedLimit = 30,
    Av3hr_ProfileType_AverageSpeed = 31,
    Av3hr_ProfileType_FlowSpeed = 32,
    Av3hr_ProfileType_RoadCondition = 33,
    Av3hr_ProfileType_Weather = 34,
    Av3hr_ProfileType_LocationObject = 35,
    Av3hr_ProfileType_PartOfCalculatedRoute = 36,
    Av3hr_ProfileType_CountryCode = 37,
    Av3hr_ProfileType_RegionCode = 38,
    Av3hr_ProfileType_DrivingSide = 39,
    Av3hr_ProfileType_UnitSystem = 40,
    Av3hr_ProfileType_VersionProtocol = 41,
    Av3hr_ProfileType_VersionHardware = 42,
    Av3hr_ProfileType_VersionMap = 43,
    Av3hr_ProfileType_MapAge = 44,
    Av3hr_ProfileType_MapProvider = 45,
    Av3hr_ProfileType_MapStatus = 46,
    Av3hr_ProfileType_SystemStatus = 47,
    Av3hr_ProfileType_TimeZoneOffset = 48,
    Av3hr_ProfileType_AbsoluteVehiclePosition = 49,
    Av3hr_ProfileType_NA = 127,
};

enum Av3hr_eAvailable
{
    Av3hr_Available_NotAvailable = 0,
    Av3hr_Available_Valid = 1,
};

enum Av3hr_eLaneDirection
{
    Av3hr_LaneDirection_None = 0,
    Av3hr_LaneDirection_Both = 1,
    Av3hr_LaneDirection_AlongDrivingDirection = 2,
    Av3hr_LaneDirection_AgainstDrivingDirection = 3,
};

enum Av3hr_eLaneTransition
{
    Av3hr_LaneTransition_None = 0,
    Av3hr_LaneTransition_Opening = 1,
    Av3hr_LaneTransition_Closing = 2,
    Av3hr_LaneTransition_Merging = 3,
    Av3hr_LaneTransition_Splitting = 4,
};

enum Av3hr_eLaneType {
    Av3hr_LaneType_Unknown = 0,
    Av3hr_LaneType_Normal = 1,
    Av3hr_LaneType_Exit = 2,                            // 脱出车道
    Av3hr_LaneType_Dummy = 3,                           // DUMMY 车道
    Av3hr_LaneType_Entry = 4,                           // 进入车道
    Av3hr_LaneType_RampUp = 5,                          // 匝道连接道（上）
    Av3hr_LaneType_RampDown = 6,                        // 匝道连接道（下）
    Av3hr_LaneType_Connection = 7,                      // 连接车道
    Av3hr_LaneType_Auxiliary = 8,                       // 辅助车道
    Av3hr_LaneType_SeviceFork = 9,                      // 分歧辅道
    Av3hr_LaneType_SeviceConfluence = 10,               // 汇流辅道
    Av3hr_LaneType_Expand = 11,                         // 扩充车道
    Av3hr_LaneType_Reduce = 12,                         // 缩减车道
    Av3hr_LaneType_ETC = 13,                            // ETC 车道
    Av3hr_LaneType_Charge = 14,                         // 收费通道
    Av3hr_LaneType_Warning = 15,                        // 警示提醒车道
    Av3hr_LaneType_Emergency = 16,                      // 紧急避险
    Av3hr_LaneType_BusOnly = 17,                        // BUS 专用道
    Av3hr_LaneType_EmergencyDriveway = 18,              // 应急车道
    Av3hr_LaneType_LowSpeedClimbing = 19,               // 缓速爬坡车道
    Av3hr_LaneType_InnerBrach = 20,                     // 车道内分支
    Av3hr_LaneType_WaitingTurn = 21,                    // 待转区域
    Av3hr_LaneType_UTurn = 22,                          // U-Turn专用道
    Av3hr_LaneType_RTurn = 23,                          // 右转专用道
    Av3hr_LaneType_NonDriveway = 24,                    // 非机动车道
    Av3hr_LaneType_Parking = 25,                        // 停车道
    Av3hr_LaneType_Tidal = 26,                          // 潮汐车道
    Av3hr_LaneType_VariableDirection = 27,              // 可变导向车道
    Av3hr_LaneType_ETCChangeSide = 28,                  // ETC与普通收费并行车道
    Av3hr_LaneType_RestrictedForbidden = 32,            // 限制禁止车道
    Av3hr_LaneType_RestrictedUsable = 64,               // 可限制车道
    Av3hr_LaneType_HOV = 128,                           // HOV
    Av3hr_LaneType_Express = 256,                       // 快车道
    Av3hr_LaneType_Reversible = 512,                    // 可逆的车道
    Av3hr_LaneType_Slow = 1024,                         // 慢车道
    Av3hr_LaneType_DrivableShoulder = 2048,             // 可行驶路肩车道
    Av3hr_LaneType_TurnOrSuicide = 4096,                //
    Av3hr_LaneType_NA = 65535,
};

enum Av3hr_eLineMarking
{
    Av3hr_LineMarking_Unknown = 0,
    Av3hr_LineMarking_None = 1,
    Av3hr_LineMarking_SolidLine = 2,
    Av3hr_LineMarking_DashedLine = 3,
    Av3hr_LineMarking_DoubleSolidLine = 4,
    Av3hr_LineMarking_DoubleDashedLine = 5,
    Av3hr_LineMarking_LeftSolidRightDashed = 6,
    Av3hr_LineMarking_RightSolidLeftDashed = 7,
    Av3hr_LineMarking_DashedBlocks = 8,
    Av3hr_LineMarking_ShadedArea = 9,
    Av3hr_LineMarking_PhysicalDivider = 10,
};


enum Av3hr_eLineMarkingColour
{
    Av3hr_LineMarkingColour_Unknow = 0,
    Av3hr_LineMarkingColour_Other = 1,
    Av3hr_LineMarkingColour_White = 2,
    Av3hr_LineMarkingColour_Yellow = 3,
    Av3hr_LineMarkingColour_Orange = 4,
    Av3hr_LineMarkingColour_Red = 5,
    Av3hr_LineMarkingColour_Blue = 6,
    Av3hr_LineMarkingColour_Green = 7,
    Av3hr_LineMarkingColour_Gray = 8,
    Av3hr_LineMarkingColour_Black = 9,
    Av3hr_LineMarkingColour_NA = 127,
};

enum Av3hr_eCurveType
{
    Av3hr_CurveType_NotPresent = 0,
    Av3hr_CurveType_Polyline = 1,
    Av3hr_CurveType_BezierSpline = 2,
};

enum Av3hr_eFormOfWay
{
    Av3hr_FormOfWay_Unknown = 0,
    Av3hr_FormOfWay_ControlledAccess = 1,                               // 受控道路(高速\快速路)
    Av3hr_FormOfWay_Road = 2,                                           // 普通道路
    Av3hr_FormOfWay_IC = 3,                                             // 高速出入路
    Av3hr_FormOfWay_JC = 4,                                             // 高速连接路
    Av3hr_FormOfWay_SAPA = 5,                                           // 服务区
    Av3hr_FormOfWay_Toll = 6,                                           // 收费站专用道路
    Av3hr_FormOfWay_InHighWayRamp = 7,                                  // 上高架匝道
    Av3hr_FormOfWay_OutHighWayRamp = 8,                                 // 下高架匝道
    Av3hr_FormOfWay_CrossDummy = 9,                                     // 交叉路口虚拟连接路
    Av3hr_FormOfWay_RoundAbout = 10,                                    // 环岛内连接路
    Av3hr_FormOfWay_Park = 11,                                          // 停车场内部路
    Av3hr_FormOfWay_MainSideConn = 12,                                  // 主辅连接路
    Av3hr_FormOfWay_SideRoad = 13,                                      // 辅路
    Av3hr_FormOfWay_UTurn = 14,                                         // 掉头专用道
    Av3hr_FormOfWay_RightTurn = 15,                                     // 右转专用道
    Av3hr_FormOfWay_LeftTurn = 16,                                      // 左转专用道
    Av3hr_FormOfWay_EmergencyEsacape = 17,                              // 紧急避险道
    Av3hr_FormOfWay_POIConn = 18,                                       // POI连接路
    Av3hr_FormOfWay_InnerRoad = 19,                                     // 园区内内部路
    Av3hr_FormOfWay_UnderConstruct = 20,                                // 在建道路
    Av3hr_FormOfWay_Maintain = 21,                                      // 维修道路
    Av3hr_FormOfWay_InnerIntersection = 22,                             // 路口内部路
    Av3hr_FormOfWay_InnerTunnel = 23,                                   // 隧道内道路
    Av3hr_FormOfWay_BridgeCross = 24,                                   // 桥梁跨越道路
    Av3hr_FormOfWay_SpecialTrafficFigure = 25,                          // 特殊交通路段
    Av3hr_FormOfWay_ParallelRoad = 26,                                  // 高速路段平行路
    Av3hr_FormOfWay_PedestrianZone = 27,                                // 行人道路
    Av3hr_FormOfWay_NA = 255,
};

enum Av3hr_eFunctionalRoadClass
{
    Av3hr_RoadClass_Unknown = 0,
    Av3hr_RoadClass_UrbanHighway = 1,
    Av3hr_RoadClass_UrbanSealedRoad = 2,
    Av3hr_RoadClass_NationalRoad = 3,
    Av3hr_RoadClass_ProvincialRoad = 4,
    Av3hr_RoadClass_CountyRoad = 5,
    Av3hr_RoadClass_OrdinaryRoad = 6,
    Av3hr_RoadClass_NarrowRoad = 7,
};


enum Av3hr_eLinearObjectType
{
    Av3hr_LinearObjectType_Centerline = 0,
    Av3hr_LinearObjectType_LaneMarking = 1,
    Av3hr_LinearObjectType_Guardrail = 2,
    Av3hr_LinearObjectType_Fence = 3,
    Av3hr_LinearObjectType_Kerb = 4,
    Av3hr_LinearObjectType_Wall = 5,
    Av3hr_LinearObjectType_NA = 127,
};

enum Av3hr_eSpecialSituationType
{
    Av3hr_SpecialSituationType_Unknown = 0,
    Av3hr_SpecialSituationType_TollBooth = 250,
    Av3hr_SpecialSituationType_PedestrianCrossing = 252,
    Av3hr_SpecialSituationType_SpeedBump = 253,
};

enum Av3hr_eTrafficLightType
{
    Av3hr_TrafficLightType_Unknown = 0,
    Av3hr_TrafficLightType_Maneuverable = 1,
    Av3hr_TrafficLightType_NonManeuverable = 2,
    Av3hr_TrafficLightType_CrossWalk = 3,
    Av3hr_TrafficLightType_Direction = 4,
    Av3hr_TrafficLightType_Roadway = 5,
    Av3hr_TrafficLightType_Flashing = 6,
    Av3hr_TrafficLightType_Intersection = 7,
};

enum Av3hr_eTrafficSignMajorType
{
    Av3hr_TrafficSignMajorType_Unknown = 0,
    Av3hr_TrafficSignMajorType_WarnningIdentify= 14,
    Av3hr_TrafficSignMajorType_LimitIdentify = 15,
    Av3hr_TrafficSignMajorType_IndicateIdentify = 16,
    Av3hr_TrafficSignMajorType_ReferRoadIdentify = 17,
    Av3hr_TrafficSignMajorType_TourismIdentify = 18,
    Av3hr_TrafficSignMajorType_AssistIdentify = 19,
};

enum Av3hr_eTurnInfo
{
    Av3hr_TurnInfo_Unknown = 0,
    Av3hr_TurnInfo_GoStraight = 1,
    Av3hr_TurnInfo_TurnLeft = 2,
    Av3hr_TurnInfo_TurnRight = 3,
    Av3hr_TurnInfo_UTurn = 4,
    Av3hr_TurnInfo_NA = 127,
};

enum Av3hr_eLateralPosition
{
    Av3hr_LateralPosition_Unknown = 0,
    Av3hr_LateralPosition_Right = 1,
    Av3hr_LateralPosition_Left = 2,
    Av3hr_LateralPosition_Above = 4,
    Av3hr_LateralPosition_Surface = 8,
};

enum Av3hr_eChangeMode
{
    Av3hr_ChangeMode_Create = 0,
    Av3hr_ChangeMode_Update = 1,
    Av3hr_ChangeMode_Delete = 2,
};

enum Av3hr_eRightOfWay
{
    Av3hr_RightOfWay_Unknown = 0,
    Av3hr_RightOfWay_MustYield = 1,
    Av3hr_RightOfWay_HasRightOfWay = 2,
};

enum Av3hr_eYesNoUnknown
{
    Av3hr_YesNoUnknown_Unknown = 0,
    Av3hr_YesNoUnknown_Yes = 1,
    Av3hr_YesNoUnknown_No = 2,
};

enum Av3hr_eConditionType
{
    Av3hr_ConditionType_Unknown = 0,
    Av3hr_ConditionType_Vehicle = 1,
    Av3hr_ConditionType_Load = 2,
    Av3hr_ConditionType_TimeOfDay = 3,
    Av3hr_ConditionType_DaysOfWeek = 4,
    Av3hr_ConditionType_Weight = 5,
    Av3hr_ConditionType_TurnDirection = 6,
    Av3hr_ConditionType_Weather = 7,
    Av3hr_ConditionType_FuzzyTime = 8,
};

enum Av3hr_eTrafficLightLongitudinalPosition
{
    Av3hr_TrafficLightLongitudinalPosition_Unknown = 0,
    Av3hr_TrafficLightLongitudinalPosition_BeforeIntersection = 1,
    Av3hr_TrafficLightLongitudinalPosition_AfterIntersection = 2,
};

enum Av3hr_eTrafficLightState
{
    Av3hr_TrafficLightState_Unknown = 0,
    Av3hr_TrafficLightState_Invalid = 1,
    Av3hr_TrafficLightState_Off = 2,
    Av3hr_TrafficLightState_Green = 3,
    Av3hr_TrafficLightState_Yellow = 4,
    Av3hr_TrafficLightState_Red = 5,
    Av3hr_TrafficLightState_RedYellow = 6,
    Av3hr_TrafficLightState_RedFlashing = 7,
    Av3hr_TrafficLightState_YellowFlashing = 8,
};

enum Av3hr_eLocationObjectType
{
    Av3hr_eLocationObjectType_GUARDRAIL_POST = 0,
    Av3hr_eLocationObjectType_LIGHT_POLE = 1,
    Av3hr_eLocationObjectType_DELINEATOR_POST = 2,
    Av3hr_eLocationObjectType_REFLECTOR_POST = 3,
    Av3hr_eLocationObjectType_GANTRY_POLE = 4,
    Av3hr_eLocationObjectType_SIGNPOST = 5,
    Av3hr_eLocationObjectType_OTHER = 6,
    Av3hr_eLocationObjectType_UNCLASSIFIED = 7,
    Av3hr_eLocationObjectType_STOPLINE = 8,
    Av3hr_eLocationObjectType_PEDESTRIANCROSSING = 9,
    Av3hr_eLocationObjectType_TRAFFICLIGHT = 10,
    Av3hr_eLocationObjectType_GuidePost = 255,
};


enum Av3hr_eRoadAccessFlags
{
    Av3hr_RoadAccessFlags_Unknown = 0,
    Av3hr_RoadAccessFlags_PassengerCars = 1,
    Av3hr_RoadAccessFlags_Pedestrians = 2,
    Av3hr_RoadAccessFlags_Bus = 4,
    Av3hr_RoadAccessFlags_Delivery = 8,
    Av3hr_RoadAccessFlags_Emergency = 16,
    Av3hr_RoadAccessFlags_Taxi = 32,
    Av3hr_RoadAccessFlags_ThroughTraffic = 64,
    Av3hr_RoadAccessFlags_Trucks = 128,
};

enum Av3hr_eLoad
{
    Av3hr_Load_WaterPolluting = 0,
    Av3hr_Load_Explosive = 1,
    Av3hr_Load_OtherDangerous = 2,
    Av3hr_Load_Empty = 3,
    Av3hr_Load_Special = 4,
    Av3hr_Load_Gasses = 5,
    Av3hr_Load_FlammableLiquids = 6,
    Av3hr_Load_FlammableSolids = 7,
    Av3hr_Load_Oxidizing = 8,
    Av3hr_Load_ToxicInfectious = 9,
    Av3hr_Load_Radioactive = 10,
    Av3hr_Load_Corrosive = 11,
    Av3hr_Load_LoadAnyDangerous = 12,
    Av3hr_Load_NA = 255,
};

enum Av3hr_eWeather
{
    Av3hr_Weather_Unknown = 0,
    Av3hr_Weather_NoSpecial = 1,
    Av3hr_Weather_Sunshine = 2,
    Av3hr_Weather_Rain = 3,
    Av3hr_Weather_Fog = 4,
    Av3hr_Weather_Snow = 5,
    Av3hr_Weather_Ice = 6,
    Av3hr_Weather_StrongWind = 7,
};

enum Av3hr_eFuzzyTime
{
    Av3hr_FuzzyTime_Unknown = 0,
    Av3hr_FuzzyTime_Day = 1,
    Av3hr_FuzzyTime_Night = 2,
};

enum Av3hr_eLaneArrowMarking
{
    Av3hr_LaneArrowMarking_None = 0,
    Av3hr_LaneArrowMarking_Straight = 1,
    Av3hr_LaneArrowMarking_SlightRight = 2,
    Av3hr_LaneArrowMarking_Right = 4,
    Av3hr_LaneArrowMarking_HardRight = 8,
    Av3hr_LaneArrowMarking_UTurn = 16,
    Av3hr_LaneArrowMarking_HardLeft = 32,
    Av3hr_LaneArrowMarking_Left = 64,
    Av3hr_LaneArrowMarking_SlightLeft = 128,
    Av3hr_LaneArrowMarking_NA = 65535,
};

enum Av3hr_UnitOfSpeed
{
    Av3hr_UnitOfSpeed_KpH = 0,
    Av3hr_UnitOfSpeed_MpH = 1,
};

enum Av3hr_SpeedLimitSource
{
    Av3hr_SpeedLimitSource_Unknown = 0,
    Av3hr_SpeedLimitSource_Implicit = 1,
    Av3hr_SpeedLimitSource_Explicit = 2,
};


#define IS_GLOBAL_DATA_PROFILE_TYPE(type) \
    (ProfileType_AbsoluteVehiclePosition == type)


#endif  // _AV3HR_MESCONSTANTS_H_
