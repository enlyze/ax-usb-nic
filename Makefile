# ENLYZE Makefile for integration into yocto-spark, building only the AX88179/AX88179A/AX88179B module (without support for AX88279), in its default configuration
# Original Makefile by ASIX is preserved in Makefile.orig

TARGET := ax_usb_nic
obj-m := $(TARGET).o
$(TARGET)-objs := ax_main.o ax88179_178a.o ax88179a_772d.o

SRC := $(shell pwd)

all:
	$(MAKE) -C $(KERNEL_SRC) M=$(SRC)

modules_install:
	$(MAKE) -C $(KERNEL_SRC) M=$(SRC) modules_install
