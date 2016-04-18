obj-m += mmap-example.o

all: test
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
	rm -f *.c~
	rm test

test:
	gcc test-mmap.c -o test
