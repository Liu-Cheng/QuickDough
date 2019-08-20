#ifndef _CMA_MEM_H_  
#define _CMA_MEM_H_  
  
#define CMEM_IOCTL_MAGIC 'm'  
#define CMEM_GET_PHYS       _IOW(CMEM_IOCTL_MAGIC, 1, unsigned int)  
#define CMEM_MAP            _IOW(CMEM_IOCTL_MAGIC, 2, unsigned int)  
#define CMEM_GET_SIZE       _IOW(CMEM_IOCTL_MAGIC, 3, unsigned int)  
#define CMEM_UNMAP          _IOW(CMEM_IOCTL_MAGIC, 4, unsigned int)  
#define CMEM_ALLOCATE       _IOW(CMEM_IOCTL_MAGIC, 5, unsigned int)  
#define CMEM_CONNECT        _IOW(CMEM_IOCTL_MAGIC, 6, unsigned int)  
#define CMEM_GET_TOTAL_SIZE _IOW(CMEM_IOCTL_MAGIC, 7, unsigned int)  
#define CMEM_CACHE_FLUSH    _IOW(CMEM_IOCTL_MAGIC, 8, unsigned int)  
  
  
struct cmamem_info {  
    char *name;  
    char is_cache;  
    unsigned int id;  
    unsigned int offset;  
    unsigned int len;  
    unsigned int phy_base;  
    unsigned int mem_base;  
};  
  
  
#endif 
