CC = g++

CDIR=./
CFLAGS= -I$(CDIR) -std=c++11 -DDEBUG -g -Wall 

TARGET = dfg-gen

SRCS = dfg-gen.cpp \
	   vertex.cpp \
	   common.cpp \
	   kmean.cpp

OBJS = $(SRCS:.cpp=.o)

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $@ 2>&1 | c++filt

.cpp.o:
	$(CC) -c $(CFLAGS) $< -o  $@

clean:
	rm -f $(OBJS) $(TARGET) core.*

dot:
	dot -Tpdf ./dump/kmean.dot > ./dump/kmean.pdf

depend:
	makedepend $(SRCS)

# DO NOT DELETE


