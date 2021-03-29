CFLAGS = -g -Wall
IA32FLAGS = -m32 -fno-asynchronous-unwind-tables -fno-pie

TARGET = mainswap mainfib

all: $(TARGET)

mainswap: mainswap.c swap.s
	gcc $(CFLAGS) $(IA32FLAGS) -o mainswap mainswap.c swap.s

mainfib: mainfib.c fib.s
	gcc $(CFLAGS) $(IA32FLAGS) -o mainfib mainfib.c fib.s

clean:
	$(RM) $(TARGET) *.o
