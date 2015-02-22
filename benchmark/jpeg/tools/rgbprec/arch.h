#ifndef __ARCH_H__
#define __ARCH_H__

#ifdef __cplusplus
//extern "C" {
#endif

typedef unsigned char color;
typedef short conv;

#ifdef _MSC_VER
#	include <intrin.h>
#	include <emmintrin.h>
#	include <io.h>
#	pragma intrinsic(__rdtsc) 
#	define CACHE_ALIGN __declspec(align(32))
	typedef unsigned __int64 uint64_t;
#else
#	include <stdint.h>
#	include <unistd.h>

	__inline static uint64_t __rdtsc(void) {
		uint64_t val1, val2;
		__asm__ __volatile__("rdtsc" : "=a" (val1), "=d" (val2));
		return (val2 << 32) | val1;
	}

#	define CACHE_ALIGN __attribute__ ((aligned(32)))
#	define O_BINARY	0
#endif

#ifdef __cplusplus
//}
#endif

#endif//__ARCH_H__
