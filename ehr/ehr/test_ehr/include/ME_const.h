#ifndef _ME_CONST_H_
#define _ME_CONST_H_

#define IN
#define OUT
#define INOUT

#define EHR_API
#define ME_API
#define ME_CM_API
#define ME_ME_API
#define ME_HMI_API

#define MAX_PATH          260

#define DELETE_S(pObject) if(NULL != pObject) {delete (pObject); (pObject) = NULL;}
#define DELETE_SG(pObject) if(NULL != pObject) {delete[] (pObject); (pObject) = NULL;}

#define  CACL_LINK_ANGLE_DISTANCE  (15)             // 15m, NDS recommends a point located 15 meters from the start point or end point of the link for calculating the angles
#define  CACL_LINK_ANGLE_SECTOR    (64)             // The angles are stored in 64 sectors
#define  CACL_LINK_ANGLE_FACTOR    (360.0 / 64.0)   // 360 / 64, 5.625, This results in a resolution of 5.6°.

#define INVALID_COORDINATE  (0x7FFFFFFF)
#define INVALID_INSTANCEID  (0x7FFFFFFF)
#define INVALID_PATHID      (0x7FFFFFFF)
#define INVALID_OFFSET      (0x7FFFFFFF)
#define INVALID_LINEID      (0x7FFFFFFF)
#define INVALID_LANEID      (0x3F)
#define VALID_PATHID_MIN    (8)



/*
经纬度换算成米
纬度分为60分，每一分再分为60秒以及秒的小数。

纬度线投射在图上看似水平的平行线，但实际上是不同半径的圆。有相同特定纬度的所有位置都在同一个纬线上。
赤道的纬度为0°，将行星平分为南半球和北半球。
纬度是指某点与地球球心的连线和地球赤道面所成的线面角，其数值在0至90度之间。位于赤道以北的点的纬度叫北纬，记为N，位于赤道以南的点的纬度称南纬，记为S。
纬度数值在0至30度之间的地区称为低纬地区，纬度数值在30至60度之间的地区称为中纬地区，纬度数值在60至90度之间的地区称为高纬地区。
赤道、南回归线、北回归线、南极圈和北极圈是特殊的纬线。
纬度1秒的长度
地球的子午线总长度大约40008km。平均：
纬度1度 = 大约111km
纬度1分 = 大约1.85km
纬度1秒 = 大约30.9m
*/

const int UNIT_DEGREE_2_METER = (111 * 1000);

#endif // !_ME_CONST_H_
