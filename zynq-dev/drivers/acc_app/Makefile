#CC = arm-linux-gnueabihf-gcc
# CC = arm-none-eabi-gcc
CC = arm-linux-gnueabi-gcc

#CC = arm-xilinx-eabi-gcc
CFLAGS= -g -o2 

TARGET = acc_app
SRCS = acc_app.c


OBJS = $(SRCS:.c=.o)

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
