#!/bin/sh

mkdir /usr/rel
cd /usr/rel

ftp -MVo ./bsd ftp://ftp4.usa.openbsd.org/pub/OpenBSD/6.0/amd64/bsd
ftp -MVo ./bsd.mp ftp://ftp4.usa.openbsd.org/pub/OpenBSD/6.0/amd64/bsd.mp
ftp -MVo ./bsd.rd ftp://ftp4.usa.openbsd.org/pub/OpenBSD/6.0/amd64/bsd.rd
ftp -MVo ./base60.tgz ftp://ftp4.usa.openbsd.org/pub/OpenBSD/6.0/amd64/base60.tgz
ftp -MVo ./comp60.tgz ftp://ftp4.usa.openbsd.org/pub/OpenBSD/6.0/amd64/comp60.tgz
ftp -MVo ./game60.tgz ftp://ftp4.usa.openbsd.org/pub/OpenBSD/6.0/amd64/game60.tgz
ftp -MVo ./man60.tgz ftp://ftp4.usa.openbsd.org/pub/OpenBSD/6.0/amd64/man60.tgz
ftp -MVo ./xbase60.tgz ftp://ftp4.usa.openbsd.org/pub/OpenBSD/6.0/amd64/xbase60.tgz
ftp -MVo ./xfont60.tgz ftp://ftp4.usa.openbsd.org/pub/OpenBSD/6.0/amd64/xfont60.tgz
ftp -MVo ./xserv60.tgz ftp://ftp4.usa.openbsd.org/pub/OpenBSD/6.0/amd64/xserv60.tgz
ftp -MVo ./xshare60.tgz ftp://ftp4.usa.openbsd.org/pub/OpenBSD/6.0/amd64/xshare60.tgz

ln -f /bsd /obsd && cp bsd.mp /nbsd && mv /nbsd /bsd
cp bsd.rd /
cp bsd /bsd.sp

rm -rf /usr/share/man

cp /sbin/reboot /sbin/oreboot
tar -C / -xzphf xshare60.tgz
tar -C / -xzphf xserv60.tgz
tar -C / -xzphf xfont60.tgz
tar -C / -xzphf xbase60.tgz
tar -C / -xzphf man60.tgz
tar -C / -xzphf game60.tgz
tar -C / -xzphf comp60.tgz
tar -C / -xzphf base60.tgz
/sbin/oreboot
