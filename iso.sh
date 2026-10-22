#!/bin/sh
set -e
. ./build.sh

mkdir -p isodir
mkdir -p isodir/boot
mkdir -p isodir/boot/grub

cp $SYSROOT/boot/myos.kernel isodir/boot/myos.kernel
cat > isodir/boot/grub/grub.cfg << EOF
set default="0"
set timeout=0

menuentry "myos" {
	multiboot /boot/myos.kernel
}
EOF
grub2-mkrescue -o myos.iso isodir
