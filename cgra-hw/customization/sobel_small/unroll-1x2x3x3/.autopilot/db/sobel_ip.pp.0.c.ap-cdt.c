#pragma line 1 "sobel_small/src/sobel_ip.c"
#pragma line 1 "sobel_small/src/sobel_ip.c" 1
#pragma line 1 "<built-in>" 1
#pragma line 1 "<built-in>" 3
#pragma line 147 "<built-in>" 3
#pragma line 1 "<command line>" 1
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "C:/EDA/Xilinx/Vivado_HLS/2013.3/common/technology/autopilot\\etc/autopilot_ssdm_op.h" 1
/* autopilot_ssdm_op.h*/
/*
 * Copyright (C) 2013 XILINX, Inc. 
 *
 * $Id$
 */
#pragma line 238 "C:/EDA/Xilinx/Vivado_HLS/2013.3/common/technology/autopilot\\etc/autopilot_ssdm_op.h"
/*#define AP_SPEC_ATTR __attribute__ ((pure))*/
#pragma empty_line
#pragma empty_line
#pragma empty_line
    /****** SSDM Intrinsics: OPERATIONS ***/
    // Interface operations
    void _ssdm_op_FifoRead() __attribute__ ((nothrow));
    void _ssdm_op_FifoWrite() __attribute__ ((nothrow));
#pragma empty_line
    //typedef unsigned int __attribute__ ((bitwidth(1))) _uint1_;
    //_uint1_  _ssdm_op_FifoNbRead() SSDM_OP_ATTR;
    //_uint1_  _ssdm_op_FifoNbWrite() SSDM_OP_ATTR;
    //_uint1_  _ssdm_op_FifoCanRead() SSDM_OP_ATTR;
    //_uint1_  _ssdm_op_FifoCanWrite() SSDM_OP_ATTR;
#pragma empty_line
    void _ssdm_op_IfRead() __attribute__ ((nothrow));
    void _ssdm_op_IfWrite() __attribute__ ((nothrow));
    //_uint1_ _ssdm_op_IfNbRead() SSDM_OP_ATTR;
    //_uint1_ _ssdm_op_IfNbWrite() SSDM_OP_ATTR;
    //_uint1_ _ssdm_op_IfCanRead() SSDM_OP_ATTR;
    //_uint1_ _ssdm_op_IfCanWrite() SSDM_OP_ATTR;
#pragma empty_line
    // Stream Intrinsics
    void _ssdm_StreamRead() __attribute__ ((nothrow));
    void _ssdm_StreamWrite() __attribute__ ((nothrow));
    //_uint1_  _ssdm_StreamNbRead() SSDM_OP_ATTR;
    //_uint1_  _ssdm_StreamNbWrite() SSDM_OP_ATTR;
    //_uint1_  _ssdm_StreamCanRead() SSDM_OP_ATTR;
    //_uint1_  _ssdm_StreamCanWrite() SSDM_OP_ATTR;
#pragma empty_line
    // Misc
    void _ssdm_op_MemShiftRead() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_Wait() __attribute__ ((nothrow));
    void _ssdm_op_Poll() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_Return() __attribute__ ((nothrow));
#pragma empty_line
    /* SSDM Intrinsics: SPECIFICATIONS */
    void _ssdm_op_SpecSynModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecTopModule() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDecl() __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDef() __attribute__ ((nothrow));
    void _ssdm_op_SpecPort() __attribute__ ((nothrow));
    void _ssdm_op_SpecConnection() __attribute__ ((nothrow));
    void _ssdm_op_SpecChannel() __attribute__ ((nothrow));
    void _ssdm_op_SpecSensitive() __attribute__ ((nothrow));
    void _ssdm_op_SpecModuleInst() __attribute__ ((nothrow));
    void _ssdm_op_SpecPortMap() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecReset() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecPlatform() __attribute__ ((nothrow));
    void _ssdm_op_SpecClockDomain() __attribute__ ((nothrow));
    void _ssdm_op_SpecPowerDomain() __attribute__ ((nothrow));
#pragma empty_line
    int _ssdm_op_SpecRegionBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecRegionEnd() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecLoopName() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecLoopTripCount() __attribute__ ((nothrow));
#pragma empty_line
    int _ssdm_op_SpecStateBegin() __attribute__ ((nothrow));
    int _ssdm_op_SpecStateEnd() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecBus() __attribute__ ((nothrow));
    void _ssdm_op_SpecFifo() __attribute__ ((nothrow));
    void _ssdm_op_SpecWire() __attribute__ ((nothrow));
    void _ssdm_op_SpecBuff() __attribute__ ((nothrow));
    void _ssdm_op_SpecMem() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecPipeline() __attribute__ ((nothrow));
    void _ssdm_op_SpecDataflowPipeline() __attribute__ ((nothrow));
#pragma empty_line
#pragma empty_line
    void _ssdm_op_SpecLatency() __attribute__ ((nothrow));
    void _ssdm_op_SpecParallel() __attribute__ ((nothrow));
    void _ssdm_op_SpecProtocol() __attribute__ ((nothrow));
    void _ssdm_op_SpecOccurrence() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecResource() __attribute__ ((nothrow));
    void _ssdm_op_SpecResourceLimit() __attribute__ ((nothrow));
    void _ssdm_op_SpecCHCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecFUCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIFCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecIPCore() __attribute__ ((nothrow));
    void _ssdm_op_SpecKeepValue() __attribute__ ((nothrow));
    void _ssdm_op_SpecMemCore() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecExt() __attribute__ ((nothrow));
    /*void* _ssdm_op_SpecProcess() SSDM_SPEC_ATTR;
    void* _ssdm_op_SpecEdge() SSDM_SPEC_ATTR; */
#pragma empty_line
    /* Presynthesis directive functions */
    void _ssdm_SpecArrayDimSize() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_RegionBegin() __attribute__ ((nothrow));
    void _ssdm_RegionEnd() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_Unroll() __attribute__ ((nothrow));
    void _ssdm_UnrollRegion() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_InlineAll() __attribute__ ((nothrow));
    void _ssdm_InlineLoop() __attribute__ ((nothrow));
    void _ssdm_Inline() __attribute__ ((nothrow));
    void _ssdm_InlineSelf() __attribute__ ((nothrow));
    void _ssdm_InlineRegion() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecArrayMap() __attribute__ ((nothrow));
    void _ssdm_SpecArrayPartition() __attribute__ ((nothrow));
    void _ssdm_SpecArrayReshape() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecStream() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecExpr() __attribute__ ((nothrow));
    void _ssdm_SpecExprBalance() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecDependence() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecLoopMerge() __attribute__ ((nothrow));
    void _ssdm_SpecLoopFlatten() __attribute__ ((nothrow));
    void _ssdm_SpecLoopRewind() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecFuncInstantiation() __attribute__ ((nothrow));
    void _ssdm_SpecFuncBuffer() __attribute__ ((nothrow));
    void _ssdm_SpecFuncExtract() __attribute__ ((nothrow));
    void _ssdm_SpecConstant() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_DataPack() __attribute__ ((nothrow));
    void _ssdm_SpecDataPack() __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecBitsMap() __attribute__ ((nothrow));
#pragma empty_line
#pragma empty_line
/*#define _ssdm_op_WaitUntil(X) while (!(X)) _ssdm_op_Wait(1);
#define _ssdm_op_Delayed(X) X */
#pragma line 9 "<command line>" 2
#pragma line 1 "<built-in>" 2
#pragma line 1 "sobel_small/src/sobel_ip.c" 2
#pragma line 1 "sobel_small/src/sobel.h" 1
#pragma line 1 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\math.h" 1 3
/**
 * This file has no copyright assigned and is placed in the Public Domain.
 * This file is part of the w64 mingw-runtime package.
 * No warranty is given; refer to the file DISCLAIMER.PD within this package.
 */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 10 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\math.h" 3
#pragma empty_line
#pragma empty_line
#pragma line 1 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 1 3
/**
 * This file has no copyright assigned and is placed in the Public Domain.
 * This file is part of the w64 mingw-runtime package.
 * No warranty is given; refer to the file DISCLAIMER.PD within this package.
 */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include/_mingw_mac.h" 1 3
/**
 * This file has no copyright assigned and is placed in the Public Domain.
 * This file is part of the w64 mingw-runtime package.
 * No warranty is given; refer to the file DISCLAIMER.PD within this package.
 */
#pragma line 18 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include/_mingw_mac.h" 3
/* mingw.org's version macros: these make gcc to define
   MINGW32_SUPPORTS_MT_EH and to use the _CRT_MT global
   and the __mingwthr_key_dtor() function from the MinGW
   CRT in its private gthr-win32.h header. */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* MS does not prefix symbols by underscores for 64-bit.  */
#pragma empty_line
/* As we have to support older gcc version, which are using underscores
   as symbol prefix for x64, we have to check here for the user label
   prefix defined by gcc.  */
#pragma line 62 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include/_mingw_mac.h" 3
/* Use alias for msvcr80 export of get/set_output_format.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Set VC specific compiler target macros.  */
#pragma line 10 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 2 3
#pragma empty_line
#pragma empty_line
/* C/C++ specific language defines.  */
#pragma line 32 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
/* Note the extern. This is needed to work around GCC's
limitations in handling dllimport attribute.  */
#pragma line 147 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
/* Attribute `nonnull' was valid as of gcc 3.3.  We don't use GCC's
   variadiac macro facility, because variadic macros cause syntax
   errors with  --traditional-cpp.  */
#pragma line 225 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
/*  High byte is the major version, low byte is the minor. */
#pragma line 247 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
/*typedef int __int128 __attribute__ ((__mode__ (TI)));*/
#pragma line 277 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
#pragma line 1 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\vadefs.h" 1 3
/**
 * This file has no copyright assigned and is placed in the Public Domain.
 * This file is part of the w64 mingw-runtime package.
 * No warranty is given; refer to the file DISCLAIMER.PD within this package.
 */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 1 3
/**
 * This file has no copyright assigned and is placed in the Public Domain.
 * This file is part of the w64 mingw-runtime package.
 * No warranty is given; refer to the file DISCLAIMER.PD within this package.
 */
#pragma line 674 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
#pragma line 1 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include/sdks/_mingw_directx.h" 1 3
#pragma line 674 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 2 3
#pragma empty_line
#pragma line 1 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include/sdks/_mingw_ddk.h" 1 3
#pragma line 675 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 2 3
#pragma line 13 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\vadefs.h" 2 3
#pragma empty_line
#pragma empty_line
#pragma pack(push,_CRT_PACKING)
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  typedef __builtin_va_list __gnuc_va_list;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  typedef __gnuc_va_list va_list;
#pragma line 46 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\vadefs.h" 3
/* Use GCC builtins */
#pragma line 102 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\vadefs.h" 3
#pragma pack(pop)
#pragma line 277 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 2 3
#pragma empty_line
#pragma empty_line
#pragma pack(push,_CRT_PACKING)
#pragma line 316 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
/* We have to define _DLL for gcc based mingw version. This define is set
   by VC, when DLL-based runtime is used. So, gcc based runtime just have
   DLL-base runtime, therefore this define has to be set.
   As our headers are possibly used by windows compiler having a static
   C-runtime, we make this definition gnu compiler specific here.  */
#pragma line 370 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
__extension__ typedef unsigned long long size_t;
#pragma line 380 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
__extension__ typedef long long ssize_t;
#pragma line 392 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
__extension__ typedef long long intptr_t;
#pragma line 405 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
__extension__ typedef unsigned long long uintptr_t;
#pragma line 418 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
__extension__ typedef long long ptrdiff_t;
#pragma line 428 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
typedef unsigned short wchar_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef unsigned short wint_t;
typedef unsigned short wctype_t;
#pragma line 456 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
typedef int errno_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef long __time32_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
__extension__ typedef long long __time64_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef __time64_t time_t;
#pragma line 518 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
/* _dowildcard is an int that controls the globbing of the command line.
 * The MinGW32 (mingw.org) runtime calls it _CRT_glob, so we are adding
 * a compatibility definition here:  you can use either of _CRT_glob or
 * _dowildcard .
 * If _dowildcard is non-zero, the command line will be globbed:  *.*
 * will be expanded to be all files in the startup directory.
 * In the mingw-w64 library a _dowildcard variable is defined as being
 * 0, therefore command line globbing is DISABLED by default. To turn it
 * on and to leave wildcard command line processing MS's globbing code,
 * include a line in one of your source modules defining _dowildcard and
 * setting it to -1, like so:
 * int _dowildcard = -1;
 */
#pragma line 605 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
/* MSVC-isms: */
#pragma empty_line
struct threadlocaleinfostruct;
struct threadmbcinfostruct;
typedef struct threadlocaleinfostruct *pthreadlocinfo;
typedef struct threadmbcinfostruct *pthreadmbcinfo;
struct __lc_time_data;
#pragma empty_line
typedef struct localeinfo_struct {
  pthreadlocinfo locinfo;
  pthreadmbcinfo mbcinfo;
} _locale_tstruct,*_locale_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef struct tagLC_ID {
  unsigned short wLanguage;
  unsigned short wCountry;
  unsigned short wCodePage;
} LC_ID,*LPLC_ID;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef struct threadlocaleinfostruct {
  int refcount;
  unsigned int lc_codepage;
  unsigned int lc_collate_cp;
  unsigned long lc_handle[6];
  LC_ID lc_id[6];
  struct {
    char *locale;
    wchar_t *wlocale;
    int *refcount;
    int *wrefcount;
  } lc_category[6];
  int lc_clike;
  int mb_cur_max;
  int *lconv_intl_refcount;
  int *lconv_num_refcount;
  int *lconv_mon_refcount;
  struct lconv *lconv;
  int *ctype1_refcount;
  unsigned short *ctype1;
  const unsigned short *pctype;
  const unsigned char *pclmap;
  const unsigned char *pcumap;
  struct __lc_time_data *lc_time_curr;
} threadlocinfo;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* mingw-w64 specific functions: */
const char *__mingw_get_crt_info (void);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma pack(pop)
#pragma line 12 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\math.h" 2 3
#pragma empty_line
#pragma empty_line
struct _exception;
#pragma empty_line
#pragma pack(push,_CRT_PACKING)
#pragma line 55 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\math.h" 3
/* See also float.h  */
#pragma empty_line
#pragma empty_line
/* IEEE 754 classication */
#pragma line 79 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\math.h" 3
  extern double * __imp__HUGE;
#pragma line 91 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\math.h" 3
  struct _exception {
    int type;
    const char *name;
    double arg1;
    double arg2;
    double retval;
  };
#pragma empty_line
  void __mingw_raise_matherr (int typ, const char *name, double a1, double a2,
         double rslt);
  void __mingw_setusermatherr (int ( *)(struct _exception *));
  __attribute__ ((__dllimport__)) void __setusermatherr(int ( *)(struct _exception *));
#pragma empty_line
#pragma empty_line
#pragma empty_line
  double sin(double _X);
  double cos(double _X);
  double tan(double _X);
  double sinh(double _X);
  double cosh(double _X);
  double tanh(double _X);
  double asin(double _X);
  double acos(double _X);
  double atan(double _X);
  double atan2(double _Y,double _X);
  double exp(double _X);
  double log(double _X);
  double log10(double _X);
  double pow(double _X,double _Y);
  double sqrt(double _X);
  double ceil(double _X);
  double floor(double _X);
  double fabs(double _X);
#pragma line 135 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\math.h" 3
  double ldexp(double _X,int _Y);
  double frexp(double _X,int *_Y);
  double modf(double _X,double *_Y);
  double fmod(double _X,double _Y);
#pragma empty_line
  void sincos (double __x, double *p_sin, double *p_cos);
  void sincosl (long double __x, long double *p_sin, long double *p_cos);
  void sincosf (float __x, float *p_sin, float *p_cos);
#pragma empty_line
#pragma empty_line
#pragma empty_line
  int abs(int _X);
  long labs(long _X);
#pragma empty_line
#pragma empty_line
#pragma empty_line
  double atof(const char *_String);
  double _atof_l(const char *_String,_locale_t _Locale);
#pragma line 162 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\math.h" 3
  struct _complex {
    double x;
    double y;
  };
#pragma empty_line
#pragma empty_line
  __attribute__ ((__dllimport__)) double _cabs(struct _complex _ComplexA);
  double _hypot(double _X,double _Y);
  __attribute__ ((__dllimport__)) double _j0(double _X);
  __attribute__ ((__dllimport__)) double _j1(double _X);
  __attribute__ ((__dllimport__)) double _jn(int _X,double _Y);
  __attribute__ ((__dllimport__)) double _y0(double _X);
  __attribute__ ((__dllimport__)) double _y1(double _X);
  __attribute__ ((__dllimport__)) double _yn(int _X,double _Y);
#pragma empty_line
#pragma empty_line
  __attribute__ ((__dllimport__)) int _matherr (struct _exception *);
#pragma empty_line
#pragma empty_line
/* These are also declared in Mingw float.h; needed here as well to work 
   around GCC build issues.  */
/* BEGIN FLOAT.H COPY */
/*
 * IEEE recommended functions
 */
#pragma empty_line
#pragma empty_line
  __attribute__ ((__dllimport__)) double _chgsign (double _X);
  __attribute__ ((__dllimport__)) double _copysign (double _Number,double _Sign);
  __attribute__ ((__dllimport__)) double _logb (double);
  __attribute__ ((__dllimport__)) double _nextafter (double, double);
  __attribute__ ((__dllimport__)) double _scalb (double, long);
  __attribute__ ((__dllimport__)) int _finite (double);
  __attribute__ ((__dllimport__)) int _fpclass (double);
  __attribute__ ((__dllimport__)) int _isnan (double);
#pragma empty_line
#pragma empty_line
/* END FLOAT.H COPY */
#pragma empty_line
#pragma empty_line
#pragma empty_line
__attribute__ ((__dllimport__)) double j0 (double) ;
__attribute__ ((__dllimport__)) double j1 (double) ;
__attribute__ ((__dllimport__)) double jn (int, double) ;
__attribute__ ((__dllimport__)) double y0 (double) ;
__attribute__ ((__dllimport__)) double y1 (double) ;
__attribute__ ((__dllimport__)) double yn (int, double) ;
#pragma empty_line
__attribute__ ((__dllimport__)) double chgsign (double);
/*
 * scalb() is a GCC built-in.
 * Exclude this _scalb() stub; the semantics are incompatible
 * with the built-in implementation.
 *
_CRTIMP double __cdecl scalb (double, long);
 *
 */
  __attribute__ ((__dllimport__)) int finite (double);
  __attribute__ ((__dllimport__)) int fpclass (double);
#pragma line 260 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\math.h" 3
/* Use the compiler's builtin define for FLT_EVAL_METHOD to
   set float_t and double_t.  */
#pragma empty_line
#pragma empty_line
typedef float float_t;
typedef double double_t;
#pragma line 278 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\math.h" 3
/* 7.12.3.1 */
/*
   Return values for fpclassify.
   These are based on Intel x87 fpu condition codes
   in the high byte of status word and differ from
   the return values for MS IEEE 754 extension _fpclass()
*/
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* 0x0200 is signbit mask */
#pragma empty_line
/*
  We can't inline float or double, because we want to ensure truncation
  to semantic type before classification. 
  (A normal long double value might become subnormal when 
  converted to double, and zero when converted to float.)
*/
#pragma empty_line
  extern int __fpclassifyl (long double);
  extern int __fpclassifyf (float);
  extern int __fpclassify (double);
#pragma line 325 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\math.h" 3
/* 7.12.3.2 */
#pragma empty_line
#pragma empty_line
/* 7.12.3.3 */
#pragma empty_line
#pragma empty_line
/* 7.12.3.4 */
/* We don't need to worry about truncation here:
   A NaN stays a NaN. */
#pragma empty_line
  extern int __isnan (double);
  extern int __isnanf (float);
  extern int __isnanl (long double);
#pragma line 372 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\math.h" 3
/* 7.12.3.5 */
#pragma empty_line
#pragma empty_line
/* 7.12.3.6 The signbit macro */
  extern int __signbit (double);
  extern int __signbitf (float);
  extern int __signbitl (long double);
#pragma line 403 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\math.h" 3
/* 7.12.4 Trigonometric functions: Double in C89 */
  extern float sinf(float _X);
  extern long double sinl(long double);
#pragma empty_line
  extern float cosf(float _X);
  extern long double cosl(long double);
#pragma empty_line
  extern float tanf(float _X);
  extern long double tanl(long double);
  extern float asinf(float _X);
  extern long double asinl(long double);
#pragma empty_line
  extern float acosf (float);
  extern long double acosl (long double);
#pragma empty_line
  extern float atanf (float);
  extern long double atanl (long double);
#pragma empty_line
  extern float atan2f (float, float);
  extern long double atan2l (long double, long double);
#pragma empty_line
/* 7.12.5 Hyperbolic functions: Double in C89  */
  extern float sinhf(float _X);
#pragma empty_line
#pragma empty_line
#pragma empty_line
  extern long double sinhl(long double);
#pragma empty_line
  extern float coshf(float _X);
#pragma empty_line
#pragma empty_line
#pragma empty_line
  extern long double coshl(long double);
#pragma empty_line
  extern float tanhf(float _X);
#pragma empty_line
#pragma empty_line
#pragma empty_line
  extern long double tanhl(long double);
#pragma empty_line
/* Inverse hyperbolic trig functions  */
/* 7.12.5.1 */
  extern double acosh (double);
  extern float acoshf (float);
  extern long double acoshl (long double);
#pragma empty_line
/* 7.12.5.2 */
  extern double asinh (double);
  extern float asinhf (float);
  extern long double asinhl (long double);
#pragma empty_line
/* 7.12.5.3 */
  extern double atanh (double);
  extern float atanhf (float);
  extern long double atanhl (long double);
#pragma empty_line
/* Exponentials and logarithms  */
/* 7.12.6.1 Double in C89 */
  extern float expf(float _X);
#pragma empty_line
#pragma empty_line
#pragma empty_line
  extern long double expl(long double);
#pragma empty_line
/* 7.12.6.2 */
  extern double exp2(double);
  extern float exp2f(float);
  extern long double exp2l(long double);
#pragma empty_line
/* 7.12.6.3 The expm1 functions */
/* TODO: These could be inlined */
  extern double expm1(double);
  extern float expm1f(float);
  extern long double expm1l(long double);
#pragma empty_line
/* 7.12.6.4 Double in C89 */
  extern float frexpf(float _X,int *_Y);
#pragma empty_line
#pragma empty_line
#pragma empty_line
  extern long double frexpl(long double,int *);
#pragma empty_line
/* 7.12.6.5 */
#pragma empty_line
#pragma empty_line
  extern int ilogb (double);
  extern int ilogbf (float);
  extern int ilogbl (long double);
#pragma empty_line
/* 7.12.6.6  Double in C89 */
  extern float ldexpf(float _X,int _Y);
#pragma empty_line
#pragma empty_line
#pragma empty_line
  extern long double ldexpl (long double, int);
#pragma empty_line
/* 7.12.6.7 Double in C89 */
  extern float logf (float);
  extern long double logl(long double);
#pragma empty_line
/* 7.12.6.8 Double in C89 */
  extern float log10f (float);
  extern long double log10l(long double);
#pragma empty_line
/* 7.12.6.9 */
  extern double log1p(double);
  extern float log1pf(float);
  extern long double log1pl(long double);
#pragma empty_line
/* 7.12.6.10 */
  extern double log2 (double);
  extern float log2f (float);
  extern long double log2l (long double);
#pragma empty_line
/* 7.12.6.11 */
  extern double logb (double);
  extern float logbf (float);
  extern long double logbl (long double);
#pragma empty_line
/* Inline versions.  GCC-4.0+ can do a better fast-math optimization
   with __builtins. */
#pragma line 552 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\math.h" 3
/* 7.12.6.12  Double in C89 */
  extern float modff (float, float*);
  extern long double modfl (long double, long double*);
#pragma empty_line
/* 7.12.6.13 */
  extern double scalbn (double, int);
  extern float scalbnf (float, int);
  extern long double scalbnl (long double, int);
#pragma empty_line
  extern double scalbln (double, long);
  extern float scalblnf (float, long);
  extern long double scalblnl (long double, long);
#pragma empty_line
/* 7.12.7.1 */
/* Implementations adapted from Cephes versions */
  extern double cbrt (double);
  extern float cbrtf (float);
  extern long double cbrtl (long double);
#pragma empty_line
/* 7.12.7.2 The fabs functions: Double in C89 */
  extern float fabsf (float x);
#pragma line 583 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\math.h" 3
  extern long double fabsl (long double);
#pragma line 594 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\math.h" 3
/* 7.12.7.3  */
  extern double hypot (double, double) ; /* in libmoldname.a */
  extern float hypotf (float x, float y);
#pragma empty_line
#pragma empty_line
#pragma empty_line
  extern long double hypotl (long double, long double);
#pragma empty_line
/* 7.12.7.4 The pow functions. Double in C89 */
  extern float powf(float _X,float _Y);
#pragma empty_line
#pragma empty_line
#pragma empty_line
  extern long double powl (long double, long double);
#pragma empty_line
/* 7.12.7.5 The sqrt functions. Double in C89. */
  extern float sqrtf (float);
  extern long double sqrtl(long double);
#pragma empty_line
/* 7.12.8.1 The erf functions  */
  extern double erf (double);
  extern float erff (float);
  extern long double erfl (long double);
#pragma empty_line
/* 7.12.8.2 The erfc functions  */
  extern double erfc (double);
  extern float erfcf (float);
  extern long double erfcl (long double);
#pragma empty_line
/* 7.12.8.3 The lgamma functions */
  extern double lgamma (double);
  extern float lgammaf (float);
  extern long double lgammal (long double);
#pragma empty_line
/* 7.12.8.4 The tgamma functions */
  extern double tgamma (double);
  extern float tgammaf (float);
  extern long double tgammal (long double);
#pragma empty_line
/* 7.12.9.1 Double in C89 */
  extern float ceilf (float);
  extern long double ceill (long double);
#pragma empty_line
/* 7.12.9.2 Double in C89 */
  extern float floorf (float);
  extern long double floorl (long double);
#pragma empty_line
/* 7.12.9.3 */
  extern double nearbyint ( double);
  extern float nearbyintf (float);
  extern long double nearbyintl (long double);
#pragma empty_line
/* 7.12.9.4 */
/* round, using fpu control word settings */
extern double rint (double);
extern float rintf (float);
extern long double rintl (long double);
#pragma empty_line
/* 7.12.9.5 */
extern long lrint (double);
extern long lrintf (float);
extern long lrintl (long double);
#pragma empty_line
__extension__ long long llrint (double);
__extension__ long long llrintf (float);
__extension__ long long llrintl (long double);
#pragma empty_line
/* Inline versions of above. 
   GCC 4.0+ can do a better fast-math job with __builtins. */
#pragma line 737 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\math.h" 3
/* 7.12.9.6 */
/* round away from zero, regardless of fpu control word settings */
  extern double round (double);
  extern float roundf (float);
  extern long double roundl (long double);
#pragma empty_line
/* 7.12.9.7  */
  extern long lround (double);
  extern long lroundf (float);
  extern long lroundl (long double);
  __extension__ long long llround (double);
  __extension__ long long llroundf (float);
  __extension__ long long llroundl (long double);
#pragma empty_line
/* 7.12.9.8 */
/* round towards zero, regardless of fpu control word settings */
  extern double trunc (double);
  extern float truncf (float);
  extern long double truncl (long double);
#pragma empty_line
/* 7.12.10.1 Double in C89 */
  extern float fmodf (float, float);
  extern long double fmodl (long double, long double);
#pragma empty_line
/* 7.12.10.2 */
  extern double remainder (double, double);
  extern float remainderf (float, float);
  extern long double remainderl (long double, long double);
#pragma empty_line
/* 7.12.10.3 */
  extern double remquo(double, double, int *);
  extern float remquof(float, float, int *);
  extern long double remquol(long double, long double, int *);
#pragma empty_line
/* 7.12.11.1 */
  extern double copysign (double, double); /* in libmoldname.a */
  extern float copysignf (float, float);
  extern long double copysignl (long double, long double);
#pragma empty_line
/* 7.12.11.2 Return a NaN */
  extern double nan(const char *tagp);
  extern float nanf(const char *tagp);
  extern long double nanl(const char *tagp);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* 7.12.11.3 */
  extern double nextafter (double, double); /* in libmoldname.a */
  extern float nextafterf (float, float);
  extern long double nextafterl (long double, long double);
#pragma empty_line
/* 7.12.11.4 The nexttoward functions */
  extern double nexttoward (double, long double);
  extern float nexttowardf (float, long double);
  extern long double nexttowardl (long double, long double);
#pragma empty_line
/* 7.12.12.1 */
/*  x > y ? (x - y) : 0.0  */
  extern double fdim (double x, double y);
  extern float fdimf (float x, float y);
  extern long double fdiml (long double x, long double y);
#pragma empty_line
/* fmax and fmin.
   NaN arguments are treated as missing data: if one argument is a NaN
   and the other numeric, then these functions choose the numeric
   value. */
#pragma empty_line
/* 7.12.12.2 */
  extern double fmax (double, double);
  extern float fmaxf (float, float);
  extern long double fmaxl (long double, long double);
#pragma empty_line
/* 7.12.12.3 */
  extern double fmin (double, double);
  extern float fminf (float, float);
  extern long double fminl (long double, long double);
#pragma empty_line
/* 7.12.13.1 */
/* return x * y + z as a ternary op */
  extern double fma (double, double, double);
  extern float fmaf (float, float, float);
  extern long double fmal (long double, long double, long double);
#pragma empty_line
/* 7.12.14 */
/* 
 *  With these functions, comparisons involving quiet NaNs set the FP
 *  condition code to "unordered".  The IEEE floating-point spec
 *  dictates that the result of floating-point comparisons should be
 *  false whenever a NaN is involved, with the exception of the != op, 
 *  which always returns true: yes, (NaN != NaN) is true).
 */
#pragma line 871 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\math.h" 3
   __attribute__ ((__dllimport__)) float _copysignf (float _Number,float _Sign);
   __attribute__ ((__dllimport__)) float _chgsignf (float _X);
   __attribute__ ((__dllimport__)) float _logbf(float _X);
   __attribute__ ((__dllimport__)) float _nextafterf(float _X,float _Y);
   __attribute__ ((__dllimport__)) int _finitef(float _X);
   __attribute__ ((__dllimport__)) int _isnanf(float _X);
   __attribute__ ((__dllimport__)) int _fpclassf(float _X);
#pragma empty_line
#pragma empty_line
#pragma empty_line
   extern long double _chgsignl (long double);
#pragma line 898 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\math.h" 3
#pragma pack(pop)
#pragma line 1 "sobel_small/src/sobel.h" 2
#pragma empty_line
#pragma line 1 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdio.h" 1 3
/**
 * This file has no copyright assigned and is placed in the Public Domain.
 * This file is part of the w64 mingw-runtime package.
 * No warranty is given; refer to the file DISCLAIMER.PD within this package.
 */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 1 3
/**
 * This file has no copyright assigned and is placed in the Public Domain.
 * This file is part of the w64 mingw-runtime package.
 * No warranty is given; refer to the file DISCLAIMER.PD within this package.
 */
#pragma line 9 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdio.h" 2 3
#pragma empty_line
#pragma empty_line
#pragma line 1 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw_print_push.h" 1 3
/**
 * This file has no copyright assigned and is placed in the Public Domain.
 * This file is part of the w64 mingw-runtime package.
 * No warranty is given; refer to the file DISCLAIMER.PD within this package.
 */
#pragma empty_line
/* Undefine __mingw_<printf> macros.  */
#pragma line 11 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdio.h" 2 3
#pragma empty_line
#pragma empty_line
#pragma pack(push,_CRT_PACKING)
#pragma line 26 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdio.h" 3
  struct _iobuf {
    char *_ptr;
    int _cnt;
    char *_base;
    int _flag;
    int _file;
    int _charbuf;
    int _bufsiz;
    char *_tmpfname;
  };
  typedef struct _iobuf FILE;
#pragma line 84 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdio.h" 3
  typedef long _off_t;
#pragma empty_line
  typedef long off_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  __extension__ typedef long long _off64_t;
#pragma empty_line
  __extension__ typedef long long off64_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  __attribute__ ((__dllimport__)) FILE * __iob_func(void);
#pragma line 120 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdio.h" 3
  __extension__ typedef long long fpos_t;
#pragma line 157 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdio.h" 3
  __attribute__ ((__dllimport__)) int _filbuf(FILE *_File);
  __attribute__ ((__dllimport__)) int _flsbuf(int _Ch,FILE *_File);
#pragma empty_line
#pragma empty_line
#pragma empty_line
  __attribute__ ((__dllimport__)) FILE * _fsopen(const char *_Filename,const char *_Mode,int _ShFlag);
#pragma empty_line
  void clearerr(FILE *_File);
  int fclose(FILE *_File);
  __attribute__ ((__dllimport__)) int _fcloseall(void);
#pragma empty_line
#pragma empty_line
#pragma empty_line
  __attribute__ ((__dllimport__)) FILE * _fdopen(int _FileHandle,const char *_Mode);
#pragma empty_line
  int feof(FILE *_File);
  int ferror(FILE *_File);
  int fflush(FILE *_File);
  int fgetc(FILE *_File);
  __attribute__ ((__dllimport__)) int _fgetchar(void);
  int fgetpos(FILE * __restrict__ _File ,fpos_t * __restrict__ _Pos);
  char * fgets(char * __restrict__ _Buf,int _MaxCount,FILE * __restrict__ _File);
  __attribute__ ((__dllimport__)) int _fileno(FILE *_File);
#pragma empty_line
#pragma empty_line
#pragma empty_line
  __attribute__ ((__dllimport__)) char * _tempnam(const char *_DirName,const char *_FilePrefix);
  __attribute__ ((__dllimport__)) int _flushall(void);
  FILE * fopen(const char * __restrict__ _Filename,const char * __restrict__ _Mode) ;
  FILE *fopen64(const char * __restrict__ filename,const char * __restrict__ mode);
  int fprintf(FILE * __restrict__ _File,const char * __restrict__ _Format,...);
  int fputc(int _Ch,FILE *_File);
  __attribute__ ((__dllimport__)) int _fputchar(int _Ch);
  int fputs(const char * __restrict__ _Str,FILE * __restrict__ _File);
  size_t fread(void * __restrict__ _DstBuf,size_t _ElementSize,size_t _Count,FILE * __restrict__ _File);
  FILE * freopen(const char * __restrict__ _Filename,const char * __restrict__ _Mode,FILE * __restrict__ _File) ;
  int fscanf(FILE * __restrict__ _File,const char * __restrict__ _Format,...) ;
  int _fscanf_l(FILE * __restrict__ _File,const char * __restrict__ _Format,_locale_t locale,...) ;
  int fsetpos(FILE *_File,const fpos_t *_Pos);
  int fseek(FILE *_File,long _Offset,int _Origin);
  int fseeko64(FILE* stream, _off64_t offset, int whence);
  long ftell(FILE *_File);
  _off64_t ftello64(FILE * stream);
  __extension__ int _fseeki64(FILE *_File,long long _Offset,int _Origin);
  __extension__ long long _ftelli64(FILE *_File);
  size_t fwrite(const void * __restrict__ _Str,size_t _Size,size_t _Count,FILE * __restrict__ _File);
  int getc(FILE *_File);
  int getchar(void);
  __attribute__ ((__dllimport__)) int _getmaxstdio(void);
  char * gets(char *_Buffer) ;
  int _getw(FILE *_File);
#pragma empty_line
#pragma empty_line
  void perror(const char *_ErrMsg);
#pragma empty_line
  __attribute__ ((__dllimport__)) int _pclose(FILE *_File);
  __attribute__ ((__dllimport__)) FILE * _popen(const char *_Command,const char *_Mode);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  int printf(const char * __restrict__ _Format,...);
  int putc(int _Ch,FILE *_File);
  int putchar(int _Ch);
  int puts(const char *_Str);
  __attribute__ ((__dllimport__)) int _putw(int _Word,FILE *_File);
#pragma empty_line
#pragma empty_line
  int remove(const char *_Filename);
  int rename(const char *_OldFilename,const char *_NewFilename);
  __attribute__ ((__dllimport__)) int _unlink(const char *_Filename);
#pragma empty_line
  int unlink(const char *_Filename) ;
#pragma empty_line
#pragma empty_line
  void rewind(FILE *_File);
  __attribute__ ((__dllimport__)) int _rmtmp(void);
  int scanf(const char * __restrict__ _Format,...) ;
  int _scanf_l(const char * __restrict__ format,_locale_t locale,... ) ;
  void setbuf(FILE * __restrict__ _File,char * __restrict__ _Buffer) ;
  __attribute__ ((__dllimport__)) int _setmaxstdio(int _Max);
  __attribute__ ((__dllimport__)) unsigned int _set_output_format(unsigned int _Format);
  __attribute__ ((__dllimport__)) unsigned int _get_output_format(void);
  unsigned int __mingw_set_output_format(unsigned int _Format);
  unsigned int __mingw_get_output_format(void);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  int setvbuf(FILE * __restrict__ _File,char * __restrict__ _Buf,int _Mode,size_t _Size);
  __attribute__ ((__dllimport__)) int _scprintf(const char * __restrict__ _Format,...);
  int sscanf(const char * __restrict__ _Src,const char * __restrict__ _Format,...) ;
  int _sscanf_l(const char * __restrict__ buffer,const char * __restrict__ format,_locale_t locale,...) ;
  __attribute__ ((__dllimport__)) int _snscanf(const char * __restrict__ _Src,size_t _MaxCount,const char * __restrict__ _Format,...) ;
  __attribute__ ((__dllimport__)) int _snscanf_l(const char * __restrict__ input,size_t length,const char * __restrict__ format,_locale_t locale,...) ;
  FILE * tmpfile(void) ;
  char * tmpnam(char *_Buffer);
  int ungetc(int _Ch,FILE *_File);
  int vfprintf(FILE * __restrict__ _File,const char * __restrict__ _Format,va_list _ArgList);
  int vprintf(const char * __restrict__ _Format,va_list _ArgList);
#pragma empty_line
  /* Make sure macros are not defined.  */
  extern
    __attribute__((__format__ (gnu_printf, 3, 0))) __attribute__ ((__nonnull__ (3)))
    int __mingw_vsnprintf(char * __restrict__ _DstBuf,size_t _MaxCount,const char * __restrict__ _Format,
      va_list _ArgList);
  extern
    __attribute__((__format__ (gnu_printf, 3, 4))) __attribute__ ((__nonnull__ (3)))
    int __mingw_snprintf(char * __restrict__ s, size_t n, const char * __restrict__ format, ...);
  extern
    __attribute__((__format__ (gnu_printf, 1, 2))) __attribute__ ((__nonnull__ (1)))
    int __mingw_printf(const char * __restrict__ , ... ) __attribute__ ((__nothrow__));
  extern
    __attribute__((__format__ (gnu_printf, 1, 0))) __attribute__ ((__nonnull__ (1)))
    int __mingw_vprintf (const char * __restrict__ , va_list) __attribute__ ((__nothrow__));
  extern
    __attribute__((__format__ (gnu_printf, 2, 3))) __attribute__ ((__nonnull__ (2)))
    int __mingw_fprintf (FILE * __restrict__ , const char * __restrict__ , ...) __attribute__ ((__nothrow__));
  extern
    __attribute__((__format__ (gnu_printf, 2, 0))) __attribute__ ((__nonnull__ (2)))
    int __mingw_vfprintf (FILE * __restrict__ , const char * __restrict__ , va_list) __attribute__ ((__nothrow__));
  extern
    __attribute__((__format__ (gnu_printf, 2, 3))) __attribute__ ((__nonnull__ (2)))
    int __mingw_sprintf (char * __restrict__ , const char * __restrict__ , ...) __attribute__ ((__nothrow__));
  extern
    __attribute__((__format__ (gnu_printf, 2, 0))) __attribute__ ((__nonnull__ (2)))
    int __mingw_vsprintf (char * __restrict__ , const char * __restrict__ , va_list) __attribute__ ((__nothrow__));
#pragma empty_line
  __attribute__ ((__dllimport__)) int _snprintf(char * __restrict__ _Dest,size_t _Count,const char * __restrict__ _Format,...) ;
  __attribute__ ((__dllimport__)) int _snprintf_l(char * __restrict__ buffer,size_t count,const char * __restrict__ format,_locale_t locale,...) ;
  __attribute__ ((__dllimport__)) int _vsnprintf(char * __restrict__ _Dest,size_t _Count,const char * __restrict__ _Format,va_list _Args) ;
  __attribute__ ((__dllimport__)) int _vsnprintf_l(char * __restrict__ buffer,size_t count,const char * __restrict__ format,_locale_t locale,va_list argptr) ;
  int sprintf(char * __restrict__ _Dest,const char * __restrict__ _Format,...) ;
  int _sprintf_l(char * __restrict__ buffer,const char * __restrict__ format,_locale_t locale,...) ;
  int vsprintf(char * __restrict__ _Dest,const char * __restrict__ _Format,va_list _Args) ;
#pragma empty_line
/* this is here to deal with software defining
 * vsnprintf as _vsnprintf, eg. libxml2.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  int vsnprintf(char * __restrict__ _DstBuf,size_t _MaxCount,const char * __restrict__ _Format,va_list _ArgList) ;
#pragma empty_line
  int snprintf(char * __restrict__ s, size_t n, const char * __restrict__ format, ...);
#pragma line 312 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdio.h" 3
  int vscanf(const char * __restrict__ Format, va_list argp);
  int vfscanf (FILE * __restrict__ fp, const char * __restrict__ Format,va_list argp);
  int vsscanf (const char * __restrict__ _Str,const char * __restrict__ Format,va_list argp);
#pragma empty_line
  __attribute__ ((__dllimport__)) int _vscprintf(const char * __restrict__ _Format,va_list _ArgList);
  __attribute__ ((__dllimport__)) int _set_printf_count_output(int _Value);
  __attribute__ ((__dllimport__)) int _get_printf_count_output(void);
#pragma line 330 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdio.h" 3
  __attribute__ ((__dllimport__)) FILE * _wfsopen(const wchar_t *_Filename,const wchar_t *_Mode,int _ShFlag);
#pragma empty_line
#pragma empty_line
  wint_t fgetwc(FILE *_File);
  __attribute__ ((__dllimport__)) wint_t _fgetwchar(void);
  wint_t fputwc(wchar_t _Ch,FILE *_File);
  __attribute__ ((__dllimport__)) wint_t _fputwchar(wchar_t _Ch);
  wint_t getwc(FILE *_File);
  wint_t getwchar(void);
  wint_t putwc(wchar_t _Ch,FILE *_File);
  wint_t putwchar(wchar_t _Ch);
  wint_t ungetwc(wint_t _Ch,FILE *_File);
  wchar_t * fgetws(wchar_t * __restrict__ _Dst,int _SizeInWords,FILE * __restrict__ _File);
  int fputws(const wchar_t * __restrict__ _Str,FILE * __restrict__ _File);
  __attribute__ ((__dllimport__)) wchar_t * _getws(wchar_t *_String) ;
  __attribute__ ((__dllimport__)) int _putws(const wchar_t *_Str);
  int fwprintf(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,...);
  int wprintf(const wchar_t * __restrict__ _Format,...);
  __attribute__ ((__dllimport__)) int _scwprintf(const wchar_t * __restrict__ _Format,...);
  int vfwprintf(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,va_list _ArgList);
  int vwprintf(const wchar_t * __restrict__ _Format,va_list _ArgList);
  __attribute__ ((__dllimport__)) int swprintf(wchar_t * __restrict__ , const wchar_t * __restrict__ , ...) ;
  __attribute__ ((__dllimport__)) int _swprintf_l(wchar_t * __restrict__ buffer,size_t count,const wchar_t * __restrict__ format,_locale_t locale,... ) ;
  __attribute__ ((__dllimport__)) int vswprintf(wchar_t * __restrict__ , const wchar_t * __restrict__ ,va_list) ;
  __attribute__ ((__dllimport__)) int _swprintf_c(wchar_t * __restrict__ _DstBuf,size_t _SizeInWords,const wchar_t * __restrict__ _Format,...);
  __attribute__ ((__dllimport__)) int _vswprintf_c(wchar_t * __restrict__ _DstBuf,size_t _SizeInWords,const wchar_t * __restrict__ _Format,va_list _ArgList);
  __attribute__ ((__dllimport__)) int _snwprintf(wchar_t * __restrict__ _Dest,size_t _Count,const wchar_t * __restrict__ _Format,...) ;
  __attribute__ ((__dllimport__)) int _vsnwprintf(wchar_t * __restrict__ _Dest,size_t _Count,const wchar_t * __restrict__ _Format,va_list _Args) ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  int snwprintf (wchar_t * __restrict__ s, size_t n, const wchar_t * __restrict__ format, ...);
  int vsnwprintf (wchar_t * __restrict__ , size_t, const wchar_t * __restrict__ , va_list);
#pragma line 373 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdio.h" 3
  int vwscanf (const wchar_t * __restrict__ , va_list);
  int vfwscanf (FILE * __restrict__ ,const wchar_t * __restrict__ ,va_list);
  int vswscanf (const wchar_t * __restrict__ ,const wchar_t * __restrict__ ,va_list);
#pragma empty_line
  __attribute__ ((__dllimport__)) int _fwprintf_p(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,...);
  __attribute__ ((__dllimport__)) int _wprintf_p(const wchar_t * __restrict__ _Format,...);
  __attribute__ ((__dllimport__)) int _vfwprintf_p(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,va_list _ArgList);
  __attribute__ ((__dllimport__)) int _vwprintf_p(const wchar_t * __restrict__ _Format,va_list _ArgList);
  __attribute__ ((__dllimport__)) int _swprintf_p(wchar_t * __restrict__ _DstBuf,size_t _MaxCount,const wchar_t * __restrict__ _Format,...);
  __attribute__ ((__dllimport__)) int _vswprintf_p(wchar_t * __restrict__ _DstBuf,size_t _MaxCount,const wchar_t * __restrict__ _Format,va_list _ArgList);
  __attribute__ ((__dllimport__)) int _scwprintf_p(const wchar_t * __restrict__ _Format,...);
  __attribute__ ((__dllimport__)) int _vscwprintf_p(const wchar_t * __restrict__ _Format,va_list _ArgList);
  __attribute__ ((__dllimport__)) int _wprintf_l(const wchar_t * __restrict__ _Format,_locale_t _Locale,...);
  __attribute__ ((__dllimport__)) int _wprintf_p_l(const wchar_t * __restrict__ _Format,_locale_t _Locale,...);
  __attribute__ ((__dllimport__)) int _vwprintf_l(const wchar_t * __restrict__ _Format,_locale_t _Locale,va_list _ArgList);
  __attribute__ ((__dllimport__)) int _vwprintf_p_l(const wchar_t * __restrict__ _Format,_locale_t _Locale,va_list _ArgList);
  __attribute__ ((__dllimport__)) int _fwprintf_l(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,_locale_t _Locale,...);
  __attribute__ ((__dllimport__)) int _fwprintf_p_l(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,_locale_t _Locale,...);
  __attribute__ ((__dllimport__)) int _vfwprintf_l(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,_locale_t _Locale,va_list _ArgList);
  __attribute__ ((__dllimport__)) int _vfwprintf_p_l(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,_locale_t _Locale,va_list _ArgList);
  __attribute__ ((__dllimport__)) int _swprintf_c_l(wchar_t * __restrict__ _DstBuf,size_t _MaxCount,const wchar_t * __restrict__ _Format,_locale_t _Locale,...);
  __attribute__ ((__dllimport__)) int _swprintf_p_l(wchar_t * __restrict__ _DstBuf,size_t _MaxCount,const wchar_t * __restrict__ _Format,_locale_t _Locale,...);
  __attribute__ ((__dllimport__)) int _vswprintf_c_l(wchar_t * __restrict__ _DstBuf,size_t _MaxCount,const wchar_t * __restrict__ _Format,_locale_t _Locale,va_list _ArgList);
  __attribute__ ((__dllimport__)) int _vswprintf_p_l(wchar_t * __restrict__ _DstBuf,size_t _MaxCount,const wchar_t * __restrict__ _Format,_locale_t _Locale,va_list _ArgList);
  __attribute__ ((__dllimport__)) int _scwprintf_l(const wchar_t * __restrict__ _Format,_locale_t _Locale,...);
  __attribute__ ((__dllimport__)) int _scwprintf_p_l(const wchar_t * __restrict__ _Format,_locale_t _Locale,...);
  __attribute__ ((__dllimport__)) int _vscwprintf_p_l(const wchar_t * __restrict__ _Format,_locale_t _Locale,va_list _ArgList);
  __attribute__ ((__dllimport__)) int _snwprintf_l(wchar_t * __restrict__ _DstBuf,size_t _MaxCount,const wchar_t * __restrict__ _Format,_locale_t _Locale,...);
  __attribute__ ((__dllimport__)) int _vsnwprintf_l(wchar_t * __restrict__ _DstBuf,size_t _MaxCount,const wchar_t * __restrict__ _Format,_locale_t _Locale,va_list _ArgList) ;
  __attribute__ ((__dllimport__)) int _swprintf(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Format,...);
  __attribute__ ((__dllimport__)) int _vswprintf(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Format,va_list _Args);
  __attribute__ ((__dllimport__)) int __swprintf_l(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Format,_locale_t _Plocinfo,...) ;
  __attribute__ ((__dllimport__)) int _vswprintf_l(wchar_t * __restrict__ buffer,size_t count,const wchar_t * __restrict__ format,_locale_t locale,va_list argptr) ;
  __attribute__ ((__dllimport__)) int __vswprintf_l(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Format,_locale_t _Plocinfo,va_list _Args) ;
#pragma line 417 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdio.h" 3
  __attribute__ ((__dllimport__)) wchar_t * _wtempnam(const wchar_t *_Directory,const wchar_t *_FilePrefix);
  __attribute__ ((__dllimport__)) int _vscwprintf(const wchar_t * __restrict__ _Format,va_list _ArgList);
  __attribute__ ((__dllimport__)) int _vscwprintf_l(const wchar_t * __restrict__ _Format,_locale_t _Locale,va_list _ArgList);
  int fwscanf(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,...) ;
  __attribute__ ((__dllimport__)) int _fwscanf_l(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,_locale_t _Locale,...) ;
  int swscanf(const wchar_t * __restrict__ _Src,const wchar_t * __restrict__ _Format,...) ;
  __attribute__ ((__dllimport__)) int _swscanf_l(const wchar_t * __restrict__ _Src,const wchar_t * __restrict__ _Format,_locale_t _Locale,...) ;
  __attribute__ ((__dllimport__)) int _snwscanf(const wchar_t * __restrict__ _Src,size_t _MaxCount,const wchar_t * __restrict__ _Format,...);
  __attribute__ ((__dllimport__)) int _snwscanf_l(const wchar_t * __restrict__ _Src,size_t _MaxCount,const wchar_t * __restrict__ _Format,_locale_t _Locale,...);
  int wscanf(const wchar_t * __restrict__ _Format,...) ;
  __attribute__ ((__dllimport__)) int _wscanf_l(const wchar_t * __restrict__ _Format,_locale_t _Locale,...) ;
  __attribute__ ((__dllimport__)) FILE * _wfdopen(int _FileHandle ,const wchar_t *_Mode);
  __attribute__ ((__dllimport__)) FILE * _wfopen(const wchar_t * __restrict__ _Filename,const wchar_t *__restrict__ _Mode) ;
  __attribute__ ((__dllimport__)) FILE * _wfreopen(const wchar_t * __restrict__ _Filename,const wchar_t * __restrict__ _Mode,FILE * __restrict__ _OldFile) ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
  __attribute__ ((__dllimport__)) void _wperror(const wchar_t *_ErrMsg);
#pragma empty_line
  __attribute__ ((__dllimport__)) FILE * _wpopen(const wchar_t *_Command,const wchar_t *_Mode);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  __attribute__ ((__dllimport__)) int _wremove(const wchar_t *_Filename);
  __attribute__ ((__dllimport__)) wchar_t * _wtmpnam(wchar_t *_Buffer);
  __attribute__ ((__dllimport__)) wint_t _fgetwc_nolock(FILE *_File);
  __attribute__ ((__dllimport__)) wint_t _fputwc_nolock(wchar_t _Ch,FILE *_File);
  __attribute__ ((__dllimport__)) wint_t _ungetwc_nolock(wint_t _Ch,FILE *_File);
#pragma line 475 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdio.h" 3
  __attribute__ ((__dllimport__)) void _lock_file(FILE *_File);
  __attribute__ ((__dllimport__)) void _unlock_file(FILE *_File);
  __attribute__ ((__dllimport__)) int _fclose_nolock(FILE *_File);
  __attribute__ ((__dllimport__)) int _fflush_nolock(FILE *_File);
  __attribute__ ((__dllimport__)) size_t _fread_nolock(void * __restrict__ _DstBuf,size_t _ElementSize,size_t _Count,FILE * __restrict__ _File);
  __attribute__ ((__dllimport__)) int _fseek_nolock(FILE *_File,long _Offset,int _Origin);
  __attribute__ ((__dllimport__)) long _ftell_nolock(FILE *_File);
  __extension__ __attribute__ ((__dllimport__)) int _fseeki64_nolock(FILE *_File,long long _Offset,int _Origin);
  __extension__ __attribute__ ((__dllimport__)) long long _ftelli64_nolock(FILE *_File);
  __attribute__ ((__dllimport__)) size_t _fwrite_nolock(const void * __restrict__ _DstBuf,size_t _Size,size_t _Count,FILE * __restrict__ _File);
  __attribute__ ((__dllimport__)) int _ungetc_nolock(int _Ch,FILE *_File);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  char * tempnam(const char *_Directory,const char *_FilePrefix) ;
  int fcloseall(void) ;
  FILE * fdopen(int _FileHandle,const char *_Format) ;
  int fgetchar(void) ;
  int fileno(FILE *_File) ;
  int flushall(void) ;
  int fputchar(int _Ch) ;
  int getw(FILE *_File) ;
  int putw(int _Ch,FILE *_File) ;
  int rmtmp(void) ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma pack(pop)
#pragma empty_line
#pragma line 1 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\sec_api/stdio_s.h" 1 3
/**
 * This file has no copyright assigned and is placed in the Public Domain.
 * This file is part of the w64 mingw-runtime package.
 * No warranty is given; refer to the file DISCLAIMER.PD within this package.
 */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdio.h" 1 3
/**
 * This file has no copyright assigned and is placed in the Public Domain.
 * This file is part of the w64 mingw-runtime package.
 * No warranty is given; refer to the file DISCLAIMER.PD within this package.
 */
#pragma line 9 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\sec_api/stdio_s.h" 2 3
#pragma line 509 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdio.h" 2 3
#pragma empty_line
#pragma empty_line
#pragma line 1 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw_print_pop.h" 1 3
/**
 * This file has no copyright assigned and is placed in the Public Domain.
 * This file is part of the w64 mingw-runtime package.
 * No warranty is given; refer to the file DISCLAIMER.PD within this package.
 */
#pragma empty_line
/* Define __mingw_<printf> macros.  */
#pragma line 511 "C:/EDA/Xilinx/Vivado_HLS/2013.3/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdio.h" 2 3
#pragma line 2 "sobel_small/src/sobel.h" 2
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
void sobel_ip(int sub_in[128*8/4+18], int sub_out[128*8/4]);
#pragma line 1 "sobel_small/src/sobel_ip.c" 2
#pragma empty_line
#pragma empty_line
void sobel_ip(int sub_in[128*8/4+18], int sub_out[128*8/4]){_ssdm_SpecArrayDimSize(sub_in,128*8/4+18);_ssdm_SpecArrayDimSize(sub_out,128*8/4);
#pragma HLS RESOURCE variable=sub_out core=RAM_1P_BRAM
#pragma line 3 "sobel_small/src/sobel_ip.c"

#pragma HLS RESOURCE variable=sub_in core=RAM_1P_BRAM
#pragma line 3 "sobel_small/src/sobel_ip.c"

#pragma HLS RESOURCE variable=return core=AXI4LiteS metadata={-bus_bundle slv0}
#pragma line 3 "sobel_small/src/sobel_ip.c"

#pragma empty_line
 int i;
 int j;
 int p;
 int q;
#pragma empty_line
 unsigned char* In_Ptr=(unsigned char*)sub_in;
#pragma empty_line
 int Gx[3][3];
 int Gy[3][3];
#pragma empty_line
 for(i=0; i<3; i++){
  for(j=0; j<3; j++){
   Gx[i][j]=sub_in[128*8/4+i*3+j];
   Gy[i][j]=sub_in[128*8/4+9+i*3+j];
  }
 }
#pragma empty_line
 sobel_ip_label3:for(i=0; i<128; i=i+1){_ssdm_op_SpecLoopName("sobel_ip_label3");_ssdm_RegionBegin("sobel_ip_label3");
#pragma HLS PIPELINE
#pragma line 22 "sobel_small/src/sobel_ip.c"

  sobel_ip_label2:for(j=0; j<8; j=j+4){_ssdm_op_SpecLoopName("sobel_ip_label2");_ssdm_RegionBegin("sobel_ip_label2");
#pragma HLS UNROLL skip_exit_check factor=2
#pragma line 23 "sobel_small/src/sobel_ip.c"

#pragma empty_line
   int sumx0=0;
   int sumy0=0;
   int sum0=0;
#pragma empty_line
   int sumx1=0;
   int sumy1=0;
   int sum1=0;
#pragma empty_line
   int sumx2=0;
   int sumy2=0;
   int sum2=0;
#pragma empty_line
   int sumx3=0;
   int sumy3=0;
   int sum3=0;
#pragma empty_line
#pragma empty_line
   sobel_ip_label1:for(p=-1; p<=1; p++){_ssdm_op_SpecLoopName("sobel_ip_label1");_ssdm_RegionBegin("sobel_ip_label1");
#pragma HLS UNROLL skip_exit_check
#pragma line 42 "sobel_small/src/sobel_ip.c"

    sobel_ip_label0:for(q=-1; q<=1; q++){_ssdm_op_SpecLoopName("sobel_ip_label0");_ssdm_RegionBegin("sobel_ip_label0");
#pragma HLS UNROLL skip_exit_check
#pragma line 43 "sobel_small/src/sobel_ip.c"

     if(i==0 || j==0 || i==128 -1 || j==8 -1){
      sumx0 = 255;
      sumy0 = 255;
     }
     else{
      sumx0+=((int)In_Ptr[(i+p)*8 +j+q])*Gx[p+1][q+1];
      sumy0+=((int)In_Ptr[(i+p)*8 +j+q])*Gy[p+1][q+1];
     }
#pragma empty_line
     if(i==0 || j+1==0 || i==128 -1 || j+1==8 -1){
      sumx1 = 255;
      sumy1 = 255;
     }
     else{
      sumx1+=((int)In_Ptr[(i+p)*8 +j+1+q])*Gx[p+1][q+1];
      sumy1+=((int)In_Ptr[(i+p)*8 +j+1+q])*Gy[p+1][q+1];
     }
#pragma empty_line
     if(i==0 || j+2==0 || i==128 -1 || j+2==8 -1){
      sumx2 = 255;
      sumy2 = 255;
     }
     else{
      sumx2+=((int)In_Ptr[(i+p)*8 +j+2+q])*Gx[p+1][q+1];
      sumy2+=((int)In_Ptr[(i+p)*8 +j+2+q])*Gy[p+1][q+1];
     }
#pragma empty_line
     if(i==0 || j+3==0 || i==128 -1 || j+3==8 -1){
      sumx3 = 255;
      sumy3 = 255;
     }
     else{
      sumx3+=((int)In_Ptr[(i+p)*8 +j+3+q])*Gx[p+1][q+1];
      sumy3+=((int)In_Ptr[(i+p)*8 +j+3+q])*Gy[p+1][q+1];
     }
    _ssdm_RegionEnd("sobel_ip_label0");}
   _ssdm_RegionEnd("sobel_ip_label1");}
#pragma empty_line
   sum0=abs(sumx0)+abs(sumy0);
   sum1=abs(sumx1)+abs(sumy1);
   sum2=abs(sumx2)+abs(sumy2);
   sum3=abs(sumx3)+abs(sumy3);
#pragma empty_line
   if(sum0>255) sum0=255;
   sum0=255-sum0;
#pragma empty_line
   if(sum1>255) sum1=255;
   sum1=255-sum1;
#pragma empty_line
   if(sum2>255) sum2=255;
   sum2=255-sum2;
#pragma empty_line
   if(sum3>255) sum3=255;
   sum3=255-sum3;
#pragma empty_line
   int id;
   id=(i*8 +j)>>2;
   sub_out[id]=sum0 + (sum1<<8) + (sum2<<16) + (sum3<<24);
  _ssdm_RegionEnd("sobel_ip_label2");}
 _ssdm_RegionEnd("sobel_ip_label3");}
}
