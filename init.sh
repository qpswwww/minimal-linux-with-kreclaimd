#!/bin/bash  

mkdir /proc /sys
mount -t proc none /proc
mount -t sysfs none /sys
mdev -s

