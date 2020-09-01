#ifndef _MC_DEBUG_H_
#define _MC_DEBUG_H_

#include <cassert>

#ifndef ASSERT

	#ifdef NDEBUG
		#define  ASSERT(X)
	#else
            #ifdef WIN32
		#define ASSERT(X) _ASSERT(X)
            #else
                #define ASSERT(X) assert(X)
            #endif // WIN32
	#endif	//	NDEBUG

#endif	//	ASSERT

#endif // !_MC_DEBUG_H_
