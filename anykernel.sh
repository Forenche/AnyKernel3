# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# begin properties
properties() { '
kernel.string=IllusionX kernel
do.devicecheck=1
do.modules=0
do.cleanup=1
do.cleanuponabort=0
device.name1=RMX1851
device.name2=rmx1851
supported.versions=10
'; } # end properties

# shell variables
block=/dev/block/bootdevice/by-name/boot;
is_slot_device=0;
ramdisk_compression=none;

## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. tools/ak3-core.sh;

## AnyKernel install
# dump_boot;
split_boot;

if [ -f $split_img/ramdisk.cpio ]; then
  unpack_ramdisk;
  repack_ramdisk;
fi;

flash_boot;
flash_dtbo;
