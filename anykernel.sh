# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# begin properties
properties() { '
kernel.string=Stormbreaker-r1 kernel for Realme 3 Pro
do.devicecheck=1
do.modules=0
do.cleanup=1
do.cleanuponabort=0
device.name1=RMX1851
device.name2=rmx1851
device.name3=Realme 3 Pro
device.name4=realme 3 pro
supported.versions=10
'; } # end properties

# shell variables
block=/dev/block/bootdevice/by-name/boot;
is_slot_device=0;
ramdisk_compression=auto;


## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. tools/ak3-core.sh;

## AnyKernel install
dump_boot;

# begin ramdisk changes
# end ramdisk changes

write_boot;
## end install

