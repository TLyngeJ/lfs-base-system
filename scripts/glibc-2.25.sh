#!/bin/bash
# 6.9. Glibc-2.25
set -e
cd $LFS/sources
rm -rf glibc-2.25
tar xf glibc-2.25.tar.xz
cd glibc-2.25

patch -Np1 -i ../glibc-2.25-fhs-1.patch

case $(uname -m) in
    x86) ln -s ld-linux.so.2 /lib/ld-lsb.so.3
    ;;
    x86_64) ln -s ../lib/ld-linux-x86-64.so.2 /lib64
            ln -s ../lib/ld-linux-x86-64.so.2 /lib64/ld-lsb-x86-64.so.3
    ;;
esac

mkdir -v build
cd       build

../configure --prefix=/usr                   \
             --enable-kernel=2.6.32          \
             --enable-obsolete-rpc           \
             --enable-stack-protector=strong \
             libc_cv_slibdir=/lib

make

touch /etc/ld.so.conf

make install

cp -v ../nscd/nscd.conf /etc/nscd.conf
mkdir -pv /var/cache/nscd

make localedata/install-locales

cat > /etc/nsswitch.conf << "EOF"
# Begin /etc/nsswitch.conf

passwd: files
group: files
shadow: files

hosts: files dns
networks: files

protocols: files
services: files
ethers: files
rpc: files

# End /etc/nsswitch.conf
EOF

tar -xf ../../tzdata2016j.tar.gz

ZONEINFO=/usr/share/zoneinfo
mkdir -pv $ZONEINFO/{posix,right}

for tz in etcetera southamerica northamerica europe africa antarctica  \
          asia australasia backward pacificnew systemv; do
    zic -L /dev/null   -d $ZONEINFO       -y "sh yearistype.sh" ${tz}
    zic -L /dev/null   -d $ZONEINFO/posix -y "sh yearistype.sh" ${tz}
    zic -L leapseconds -d $ZONEINFO/right -y "sh yearistype.sh" ${tz}
done

cp -v zone.tab zone1970.tab iso3166.tab $ZONEINFO
zic -d $ZONEINFO -p America/New_York
unset ZONEINFO

cp -v /usr/share/zoneinfo/Europe/Dublin /etc/localtime

cat > /etc/ld.so.conf << "EOF"
# Begin /etc/ld.so.conf
/usr/local/lib
/opt/lib

EOF

cat >> /etc/ld.so.conf << "EOF"
# Add an include directory
include /etc/ld.so.conf.d/*.conf

EOF
mkdir -pv /etc/ld.so.conf.d

cd $LFS/sources
rm -rf glibc-2.25
