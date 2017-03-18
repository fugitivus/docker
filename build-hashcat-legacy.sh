#!/bin/sh

#install some packages to build hashcat:
apt-get update && apt-get install\
  m4 lzip git make wget gcc libgmp3-dev libc6-dev-i386 -y
git clone https://github.com/hashcat/hashcat-legacy.git

#build hashcat and gmp:
cd /hashcat-legacy
wget -c https://gmplib.org/download/gmp/gmp-6.1.0.tar.lz
cd /hashcat-legacy && tar xfv gmp-6.1.0.tar.lz
cd /hashcat-legacy/gmp-6.1.0
./configure --host=i386-pc-linux-gnu
--prefix=/hashcat-legacy/deps/gmp/linux32 --disable-shared
make install
cd /hashcat-legacy
make linux
cp hashcat-cli64.bin /sbin/hashcat64
cp hashcat-cli64.bin /sbin/hashcat
cp hashcat-cli32.bin /sbin/hashcat32

rm -r /hashcat-legacy
