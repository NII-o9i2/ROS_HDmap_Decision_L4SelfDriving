#include "ME_types.h"
#include "av3hr_msgconstants.h"

struct  UDPStruct
{
	//4 byte 对齐
	me_uint8 HDmapNo;//若数据长度超过1472 byte, 用于标记

	me_uint8 NumOfLaneDrvDir;

	me_uint8 PositionPathId;

	me_uint8 ProfileShortPathId;

	Av3hr_eFormOfWay FormOfWay[2];//当前和下一个值 Av3hr_eFormOfWay占4byte
	
	// me_uint32 SegmentOffsetFcn[2];

	me_uint32 FormOfWayOffset;

	me_uint32 EffSpdLmtOffset;

	me_uint32 LnChangeOffset;

	me_int32 LnWidth[6];//实际车道少于6时为初始值

	me_uint32 PositionOffset;

	me_uint32 ProfileShortCurvatureOffset[35];//曲率和offset对应,多余的默认为0
	
	me_float ProfileShortCurvatureValue[35];

	me_uint8 EffSpdLmt[2];//当前值和下一个值

	me_uint16 ProfileShortCurvatureNoOfPoints;//有效点的个数

	me_bool LnIncrease;

};

// struct  testStruct
// {
// 	//4 byte 对齐
// 	me_uint8 HDmapNo;//若数据长度超过1472 byte, 用于标记

// 	me_uint8 NumOfLaneDrvDir;

// 	me_uint8 PositionPathId;

// 	me_uint8 ProfileShortPathId;

// 	Av3hr_eFormOfWay FormOfWay[2];//当前和下一个值 
	
// 	// me_uint32 SegmentOffsetFcn[2];

// 	me_uint32 FormOfWayOffset;

// 	me_uint32 EffSpdLmtOffset;

// 	me_uint32 LnChangeOffset;

// 	me_int32 LnWidth[6];//实际车道少于6时为初始值

// 	me_uint32 PositionOffset;

// 	me_uint32 ProfileShortCurvatureOffset[35];//曲率和offset对应,多余的默认为0
	
// 	me_float ProfileShortCurvatureValue[35];

// 	me_uint16 ProfileShortCurvatureNoOfPoints;//有效点的个数

// 	me_uint8 EffSpdLmt[2];//当前值和下一个值

// 	me_bool LnIncrease;

// };
