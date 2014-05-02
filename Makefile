KERN_DIR = /usr/src/kernels/linux-kernel-src
BUILD_DIR=$(shell pwd)

logger-y:=main.o
MODULE=logger.o
obj-m:=$(MODULE)

module:
	make -C $(KERN_DIR) SUBDIRS=$(BUILD_DIR) modules

clean:
	rm -f *.o *.ko *.unsigned *.mod.c *.order *.symvers
