#if !defined(_ME_PUBHEAD_H_)
#define _ME_PUBHEAD_H_

#include <algorithm>
#include <limits>
#include <string>
#include <vector>
#include <list>
#include <deque>
#include <map>
#include <set>
#include <stdint.h>

using namespace std;

#include "ME_platform.h"
#include "ME_types.h"
#include "ME_const.h"
#include "ME_debug.h"
#include "CMGeoCoord.h"


#ifndef PI
	#define PI		(3.14159265358979323846f)
#endif

#define NAVI_POS_UINT           (3686400.0f)

const me_double LONGITUDE_MIN   = 73.666667f;
const me_double LONGITUDE_MAX   = 135.041667f;
const me_double LATITUDE_MIN    = 3.866667f;
const me_double LATITUDE_MAX    = 53.550000f;


#endif // !defined(_ME_PUBHEAD_H_)
