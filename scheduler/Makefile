CC = g++
CFLAGS= -DDEBUG -g -Wall -gdwarf-2 
#CFLAGS= -g -o3
TARGET = cgracompiler
SRCS = Global_Def.cpp \
	   Component_Activity.cpp \
	   Component_Reserved.cpp \
	   Component_State.cpp \
	   Operand.cpp \
	   PE.cpp \
	   Coarse_Grain_Recon_Arch.cpp \
	   Data_Flow_Graph.cpp \
	   Scheduler.cpp \
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


