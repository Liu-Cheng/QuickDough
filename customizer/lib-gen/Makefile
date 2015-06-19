CC = g++
CFLAGS= -DDEBUG -g -Wall -gdwarf-2 
#CFLAGS= -g -o3
TARGET = lib-analysis 
SRCS = main.cpp

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


