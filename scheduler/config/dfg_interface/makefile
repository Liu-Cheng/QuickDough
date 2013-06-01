CC = g++
CFLAGS= -DDEBUG -g -Wall
#CFLAGS= -g -o3
TARGET = DFGGen
SRCS = DFG_generation_aes.cpp \
	   DFG_generation_conv.cpp \
	   DFG_generation_fft.cpp \
	   DFG_generation_mmm.cpp \
	   DFG_generation_rand.cpp \
	   DFG_generation_vd.cpp \
	   dfg_interface.cpp \
	   read_equation.cpp \
	   simplist.cpp \
       main.cpp

OBJS = $(SRCS:.cpp=.o)

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $@ 2>&1 | c++filt

.cpp.o:
	$(CC) -c $(CFLAGS) $< -o  $@

clean:
	rm -f $(OBJS) $(TARGET) core.*

depend:
	makedepend $(SRCS)

# DO NOT DELETE


