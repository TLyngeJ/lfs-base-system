#!/bin/bash
# 6.25. Shadow-4.4
set -e
cd $LFS/sources
rm -rf shadow-4.4
tar xf shadow-4.4.tar.xz
cd shadow-4.4

sed -i 's/groups$(EXEEXT) //' src/Makefile.in
find man -name Makefile.in -exec sed -i 's/groups\.1 / /'   {} \;
find man -name Makefile.in -exec sed -i 's/getspnam\.3 / /' {} \;
find man -name Makefile.in -exec sed -i 's/passwd\.5 / /'   {} \;

sed -i -e 's@#ENCRYPT_METHOD DES@ENCRYPT_METHOD SHA512@' \
       -e 's@/var/spool/mail@/var/mail@' etc/login.defs

echo '--- src/useradd.c   (old)
+++ src/useradd.c   (new)
@@ -2027,6 +2027,8 @@
        is_shadow_grp = sgr_file_present ();
 #endif
 
+       get_defaults ();
+
        process_flags (argc, argv);
 
 #ifdef ENABLE_SUBIDS
@@ -2036,8 +2038,6 @@
            (!user_id || (user_id <= uid_max && user_id >= uid_min));
 #endif                         /* ENABLE_SUBIDS */
 
-       get_defaults ();
-
 #ifdef ACCT_TOOLS_SETUID
 #ifdef USE_PAM
        {' | patch -p0 -l

sed -i 's/1000/999/' etc/useradd

sed -i -e '47 d' -e '60,65 d' libmisc/myname.c

./configure --sysconfdir=/etc --with-group-name-max-length=32

make

make install

mv -v /usr/bin/passwd /bin

pwconv

grpconv

cd $LFS/sources
rm -rf shadow-4.4
