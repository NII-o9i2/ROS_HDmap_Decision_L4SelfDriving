#ifndef _ME_PLATFORM_H_
#define _ME_PLATFORM_H_

#ifdef LINUX

#define _MAX_PATH   260

#define strcpy_s    strcpy
#define sprintf_s   sprintf

#endif

#ifdef WIN32
#define PATH_SEPARATOR  "\\"
#else
#define PATH_SEPARATOR  "/"
#endif // WIN32

#endif // _ME_PLATFORM_H_
