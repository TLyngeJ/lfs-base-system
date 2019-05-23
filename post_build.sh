#!/bin/bash
set -e

mkdir -pv /sources/logs
export MAKEFLAGS='-j 14'

echo
echo "*********************************"
echo "* Running post-build operations *"
echo "*********************************"
echo

# 7.2. LFS-Bootscripts-20150222
echo "7.2. LFS-Bootscripts-20180820"
sh /scripts/LFS-Bootscripts-20180820.sh > /sources/logs/LFS-Bootscripts-20180820 2>&1

bash /lib/udev/init-net-rules.sh

# 7.6. System V Bootscript Usage and Configuration
echo "7.6. System V Bootscript Usage and Configuration"
sh /scripts/sysvinit.sh > /sources/logs/sysvinit 2>&1

# 7.8. Creating the /etc/inputrc File
echo "7.8. Creating the /etc/inputrc File"
sh /scripts/inputrc.sh > /sources/logs/inputrc 2>&1

# 7.9. Creating the /etc/shells File
echo "7.9. Creating the /etc/shells File"
sh /scripts/shells.sh > /sources/logs/shells 2>&1

# 8.3. Linux-4.18.5
echo "8.3. Linux-4.18.5"
sh /scripts/linux-4.18.5.sh > /sources/logs/linux-4.18.5 2>&1

echo
echo "***********************************"
echo "* Build has funished successfully *"
echo "***********************************"
echo
