CC = g++
CDIR=../../common/

CFLAGS= -I$(CDIR) -DDEBUG -g -Wall 

TARGET = dfg-gen
SRCS = dfg-gen.cpp \
	   ../../common/Operand.cpp \
	   ../../common/common.cpp \
	   ../../common/Instruction.cpp

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


