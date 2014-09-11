CC = g++
CFLAGS= -DDEBUG -g -O0 -Wall 
#CFLAGS= -g -o3
TARGET = cgracompiler
SRCS = Global_Def.cpp \
	   Vertex.cpp \
	   Component_Activity.cpp \
	   Component_Reserved.cpp \
	   Component_State.cpp \
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

GlobalDef.o: GlobalDef.h
Vertex.o: Vertex.h GlobalDef.h
PE.o: PE.h GlobalDef.h
CoarseGrainReconArch.o: CoarseGrainReconArch.h GlobalDef.h PE.h
DataFlowGraph.o: DataFlowGraph.h GlobalDef.h Vertex.h
Scheduler.o: Scheduler.h GlobalDef.h DataFlowGraph.h Vertex.h
Scheduler.o: CoarseGrainReconArch.h PE.h
main.o: GlobalDef.h DataFlowGraph.h Vertex.h CoarseGrainReconArch.h
main.o: PE.h Scheduler.h
