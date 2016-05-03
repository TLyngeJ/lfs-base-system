#!/bin/bash
echo
echo "************************************"
echo "* Stripping                        *"
echo "* (But you can leave your hat on!) *"
echo "************************************"
echo

/tools/bin/find /{,usr/}{bin,lib,sbin} -type f \
    -exec /tools/bin/strip --strip-debug '{}' ';' > /dev/null  2>&1

rm -rf /tmp/* > /dev/null  2>&1
rm -f /usr/lib/lib{bfd,opcodes}.a > /dev/null  2>&1
rm -f /usr/lib/libbz2.a > /dev/null  2>&1
rm -f /usr/lib/lib{com_err,e2p,ext2fs,ss}.a > /dev/null  2>&1
rm -f /usr/lib/libltdl.a > /dev/null  2>&1
rm -f /usr/lib/libfl.a > /dev/null  2>&1
rm -f /usr/lib/libfl_pic.a > /dev/null  2>&1
rm -f /usr/lib/libz.a > /dev/null  2>&1
