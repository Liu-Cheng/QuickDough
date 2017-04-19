CC = g++
CDIR =./

CFLAGS = -I$(CDIR) -std=c++11 -DDEBUG -g -Wall 
#CFLAGS = -g -o3
TARGET = dfg-gen
SRCS = dfg-gen.cpp \
	   fir.cpp \
	   common.cpp \
	   vertex.cpp

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


