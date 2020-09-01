#ifndef _ME_TYPES_H_
#define _ME_TYPES_H_

#include <string>

typedef unsigned char       me_uint8;
typedef signed char         me_int8;
typedef unsigned short int  me_uint16;
typedef signed short int    me_int16;
typedef unsigned int        me_uint32;
typedef signed int          me_int32;
typedef unsigned long long  me_uint64;
typedef long long           me_int64;

typedef char                me_char;
typedef unsigned char	    me_uchar;
typedef me_uchar            me_byte;

typedef wchar_t             me_wchar;

typedef unsigned int	    me_uint;
typedef int	            me_int;
typedef unsigned short	    me_ushort;
typedef  short	            me_short;
typedef unsigned long	    me_ulong;
typedef long                me_long;
typedef unsigned long       me_ulong;
typedef	unsigned long long  me_ullong;
typedef	long long           me_llong;

typedef float		    me_float;
typedef double		    me_double;
typedef bool		    me_bool;
typedef unsigned short	    me_word;
typedef unsigned int	    me_dword;

typedef void*               me_handle;
typedef time_t              me_time;

typedef std::basic_string<me_char>   me_string;
typedef std::basic_string<me_wchar>  me_wstring;

typedef uint32_t            Av3hr_pathid_t;
typedef uint32_t            Av3hr_offset_t;
typedef float               Av3hr_vehiclespeed_t;
typedef float               Av3hr_angle_t;
typedef uint8_t             Av3hr_laneidx_t;
typedef uint32_t            Av3hr_instanceid_t;
typedef uint64_t            Av3hr_lineid_t;
typedef uint32_t            Av3hr_distance_t;
typedef uint64_t            Av3hr_timestamp_t;

#define NAVI_POS_UINT       (3686400.0f)

#ifdef LINUX

typedef void            *LPVOID;

#endif

enum SRS_TYPE
{
    SRS_NONE,
    SRS_NDS,
    SRS_WGS
};

#endif // !_ME_TYPES_H_
