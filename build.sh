#!/bin/bash
set -e

mkdir -pv /sources/logs
export MAKEFLAGS='-j7'

echo
echo "*********************************"
echo "* Creating file and directories *"
echo "*********************************"
echo

sh /scripts/setup.sh > /sources/logs/setup 2>&1
echo Done!

echo
echo "*********************"
echo "* Building programs *"
echo "*********************"
echo

# 6.7. Linux-4.18.5 API Headers
echo "Building: 6.7. Linux-4.18.5 API Headers"
sh /scripts/linux-headers-4.18.5.sh > /sources/logs/linux-headers-4.18.5.sh 2>&1
# 6.8. Man-pages-4.16
echo "Building: 6.8. Man-pages-4.16"
sh /scripts/man-pages-4.16.sh > /sources/logs/man-pages-4.16 2>&1
# 6.9. Glibc-2.28
echo "Building: 6.9. Glibc-2.28"
sh /scripts/glibc-2.28.sh > /sources/logs/glibc-2.28 2>&1
# 6.10. Adjusting the Toolchain
echo "Building: 6.10. Adjusting the Toolchain"
sh /scripts/adjust-toolchain.sh > /sources/logs/adjust-toolchain 2>&1
# 6.11. Zlib-1.2.11
echo "Building: 6.11. Zlib-1.2.11"
sh /scripts/zlib-1.2.11.sh > /sources/logs/zlib-1.2.11 2>&1
# 6.12. File-5.34
echo "Building: 6.12. File-5.34"
sh /scripts/file-5.34.sh > /sources/logs/file-5.34 2>&1
# 6.13. Readline-7.0
echo "Building: 6.13. Readline-7.0"
sh /scripts/readline-7.0.sh > /sources/logs/readline-7.0 2>&1
# 6.14. M4-1.4.18
echo "Building: 6.14. M4-1.4.18"
sh /scripts/m4-1.4.18.sh > /sources/logs/m4-1.4.18 2>&1
# 6.15. Bc-1.07.1
echo "Building: 6.15. Bc-1.07.1"
sh /scripts/bc-1.07.1.sh > /sources/logs/bc-1.07.1 2>&1
# 6.16. Binutils-2.31.1
echo "Building: 6.16. Binutils-2.31.1"
sh /scripts/binutils-2.31.1.sh > /sources/logs/binutils-2.31.1 2>&1
# 6.17. GMP-6.1.2
echo "Building: 6.17. GMP-6.1.2"
sh /scripts/gmp-6.1.2.sh > /sources/logs/gmp-6.1.2 2>&1
# 6.18. MPFR-4.0.1
echo "Building: 6.18. MPFR-4.0.1"
sh /scripts/mpfr-4.0.1.sh > /sources/logs/mpfr-4.0.1 2>&1
# 6.19. MPC-1.1.0
echo "Building: 6.19. MPC-1.1.0"
sh /scripts/mpc-1.1.0.sh > /sources/logs/mpc-1.1.0 2>&1
# 6.20. Shadow-4.6
echo "Building: 6.20. Shadow-4.6"
sh /scripts/shadow-4.6.sh > /sources/logs/shadow-4.6 2>&1
# 6.21. GCC-8.2.0
echo "Building: 6.21. GCC-8.2.0"
sh /scripts/gcc-8.2.0.sh > /sources/logs/gcc-8.2.0 2>&1
# 6.22. Bzip2-1.0.6
echo "Building: 6.22. Bzip2-1.0.6"
sh /scripts/bzip2-1.0.6.sh > /sources/logs/bzip2-1.0.6 2>&1
# 6.23. Pkg-config-0.29.2
echo "Building: 6.23. Pkg-config-0.29.2"
sh /scripts/pkg-config-0.29.2.sh > /sources/logs/pkg-config-0.29.2 2>&1
# 6.24. Ncurses-6.1
echo "Building: 6.24. Ncurses-6.1"
sh /scripts/ncurses-6.1.sh > /sources/logs/ncurses-6.1 2>&1
# 6.25. Attr-2.4.48
echo "Building: 6.25. Attr-2.4.48"
sh /scripts/attr-2.4.48.sh > /sources/logs/attr-2.4.48 2>&1
# 6.26. Acl-2.2.53
echo "Building: 6.26. Acl-2.2.53"
sh /scripts/acl-2.2.53.sh > /sources/logs/acl-2.2.53 2>&1
# 6.27. Libcap-2.25
echo "Building: 6.27. Libcap-2.25"
sh /scripts/libcap-2.25.sh > /sources/logs/libcap-2.25 2>&1
# 6.28. Sed-4.5
echo "Building: 6.28. Sed-4.5"
sh /scripts/sed-4.5.sh > /sources/logs/sed-4.5 2>&1
# 6.29. Psmisc-23.1
echo "Building: 6.29. Psmisc-23.1"
sh /scripts/psmisc-23.1.sh > /sources/logs/psmisc-23.1 2>&1
# 6.30. Iana-Etc-2.30
echo "Building: 6.30. Iana-Etc-2.30"
sh /scripts/iana-etc-2.30.sh > /sources/logs/iana-etc-2.30 2>&1
# 6.31. Bison-3.0.5
echo "Building: 6.31. Bison-3.0.5"
sh /scripts/bison-3.0.5.sh > /sources/logs/bison-3.0.5 2>&1
# 6.32. Flex-2.6.4
echo "Building: 6.32. Flex-2.6.4"
sh /scripts/flex-2.6.4.sh > /sources/logs/flex-2.6.4 2>&1
# 6.33. Grep-3.1
echo "Building: 6.33. Grep-3.1"
sh /scripts/grep-3.1.sh > /sources/logs/grep-3.1 2>&1
# 6.34. Bash-4.4.18
echo "Building: 6.34. Bash-4.4.18"
sh /scripts/bash-4.4.18.sh > /sources/logs/bash-4.4.18 2>&1
# 6.35. Libtool-2.4.6
echo "Building: 6.35. Libtool-2.4.6"
sh /scripts/libtool-2.4.6.sh > /sources/logs/libtool-2.4.6 2>&1
# 6.36. GDBM-1.17
echo "Building: 6.36. GDBM-1.17"
sh /scripts/gdbm-1.17.sh > /sources/logs/gdbm-1.17 2>&1
# 6.37. Gperf-3.1
echo "Building: 6.37. Gperf-3.1"
sh /scripts/gperf-3.1.sh > /sources/logs/gperf-3.1 2>&1
# 6.38. Expat-2.2.6
echo "Building: 6.38. Expat-2.2.6"
sh /scripts/expat-2.2.6.sh > /sources/logs/expat-2.2.6 2>&1
# 6.39. Inetutils-1.9.4
echo "Building: 6.39. Inetutils-1.9.4"
sh /scripts/inetutils-1.9.4.sh > /sources/logs/inetutils-1.9.4 2>&1
# 6.40. Perl-5.28.0
echo "Building: 6.40. Perl-5.28.0"
sh /scripts/perl-5.28.0.sh > /sources/logs/perl-5.28.0 2>&1
# 6.41. XML::Parser-2.44
echo "Building: 6.41. XML::Parser-2.44"
sh /scripts/XML-Parser-2.44.sh > /sources/logs/XML-Parser-2.44 2>&1
# 6.42. Intltool-0.51.0
echo "Building: 6.42. Intltool-0.51.0"
sh /scripts/intltool-0.51.0.sh > /sources/logs/intltool-0.51.0 2>&1
# 6.43. Autoconf-2.69
echo "Building: 6.43. Autoconf-2.69"
sh /scripts/autoconf-2.69.sh > /sources/logs/autoconf-2.69 2>&1
# 6.44. Automake-1.16.1
echo "Building: 6.44. Automake-1.16.1"
sh /scripts/automake-1.16.1.sh > /sources/logs/automake-1.16.1 2>&1
# 6.45. Xz-5.2.4
echo "Building: 6.45. Xz-5.2.4"
sh /scripts/xz-5.2.4.sh > /sources/logs/xz-5.2.4 2>&1
# 6.46. Kmod-25
echo "Building: 6.46. Kmod-25"
sh /scripts/kmod-25.sh > /sources/logs/kmod-25 2>&1
# 6.47. Gettext-0.19.8.1
echo "Building: 6.47. Gettext-0.19.8.1"
sh /scripts/gettext-0.19.8.1.sh > /sources/logs/gettext-0.19.8.1 2>&1
# 6.48. Libelf 0.173
echo "Building: 6.48. Libelf 0.173"
sh /scripts/libelf-0.173.sh > /sources/logs/libelf-0.173 2>&1
# 6.49. Libffi-3.2.1
echo "Building: 6.49. Libffi-3.2.1"
sh /scripts/libffi-3.2.1.sh > /sources/logs/libffi-3.2.1 2>&1
# 6.50. OpenSSL-1.1.0i
echo "Building: 6.50. OpenSSL-1.1.0i"
sh /scripts/openssl-1.1.0i.sh > /sources/logs/openssl-1.1.0i 2>&1
# 6.51. Python-3.7.0
echo "Building: 6.51. Python-3.7.0"
sh /scripts/python-3.7.0.sh > /sources/logs/python-3.7.0 2>&1
# 6.52. Ninja-1.8.2
echo "Building: 6.52. Ninja-1.8.2"
sh /scripts/ninja-1.8.2.sh > /sources/logs/ninja-1.8.2 2>&1
# 6.53. Meson-0.47.1
echo "Building: 6.53. Meson-0.47.1"
sh /scripts/meson-0.47.1.sh > /sources/logs/meson-0.47.1 2>&1
# 6.54. Procps-ng-3.3.15
echo "Building: 6.54. Procps-ng-3.3.15"
sh /scripts/procps-ng-3.3.15.sh > /sources/logs/procps-ng-3.3.15 2>&1
# 6.55. E2fsprogs-1.44.3
echo "Building: 6.55. E2fsprogs-1.44.3"
sh /scripts/e2fsprogs-1.44.3.sh > /sources/logs/e2fsprogs-1.44.3 2>&1
# 6.56. Coreutils-8.30
echo "Building: 6.56. Coreutils-8.30"
sh /scripts/coreutils-8.30.sh > /sources/logs/coreutils-8.30 2>&1
# 6.57. Check-0.12.0
echo "Building: 6.57. Check-0.12.0"
sh /scripts/check-0.12.0.sh > /sources/logs/check-0.12.0 2>&1
# 6.58. Diffutils-3.6
echo "Building: 6.58. Diffutils-3.6"
sh /scripts/diffutils-3.6.sh > /sources/logs/diffutils-3.6 2>&1
# 6.59. Gawk-4.2.1
echo "Building: 6.59. Gawk-4.2.1"
sh /scripts/gawk-4.2.1.sh > /sources/logs/gawk-4.2.1 2>&1
# 6.60. Findutils-4.6.0
echo "Building: 6.60. Findutils-4.6.0"
sh /scripts/findutils-4.6.0.sh > /sources/logs/findutils-4.6.0 2>&1
# 6.61. Groff-1.22.3
echo "Building: 6.61. Groff-1.22.3"
sh /scripts/groff-1.22.3.sh > /sources/logs/groff-1.22.3 2>&1
# 6.62. GRUB-2.02
echo "Building: 6.62. GRUB-2.02"
sh /scripts/grub-2.02.sh > /sources/logs/grub-2.02 2>&1
# 6.63. Less-530
echo "Building: 6.63. Less-530"
sh /scripts/less-530.sh > /sources/logs/less-530 2>&1
# 6.64. Gzip-1.9
echo "Building: 6.64. Gzip-1.9"
sh /scripts/gzip-1.9.sh > /sources/logs/gzip-1.9 2>&1
# 6.65. IPRoute2-4.18.0
echo "Building: 6.65. IPRoute2-4.18.0"
sh /scripts/iproute2-4.18.0.sh > /sources/logs/iproute2-4.18.0 2>&1
# 6.66. Kbd-2.0.4
echo "Building: 6.66. Kbd-2.0.4"
sh /scripts/kbd-2.0.4.sh > /sources/logs/kbd-2.0.4 2>&1
# 6.67. Libpipeline-1.5.0
echo "Building: 6.67. Libpipeline-1.5.0"
sh /scripts/libpipeline-1.5.0.sh > /sources/logs/libpipeline-1.5.0 2>&1
# 6.68. Make-4.2.1
echo "Building: 6.68. Make-4.2.1"
sh /scripts/make-4.2.1.sh > /sources/logs/make-4.2.1 2>&1
# 6.69. Patch-2.7.6
echo "Building: 6.69. Patch-2.7.6"
sh /scripts/patch-2.7.6.sh > /sources/logs/patch-2.7.6 2>&1
# 6.70. Sysklogd-1.5.1
echo "Building: 6.70. Sysklogd-1.5.1"
sh /scripts/sysklogd-1.5.1.sh > /sources/logs/sysklogd-1.5.1 2>&1
# 6.71. Sysvinit-2.90
echo "Building: 6.71. Sysvinit-2.90"
sh /scripts/sysvinit-2.90.sh > /sources/logs/sysvinit-2.90 2>&1
# 6.72. Eudev-3.2.5
echo "Building: 6.72. Eudev-3.2.5"
sh /scripts/eudev-3.2.5.sh > /sources/logs/eudev-3.2.5 2>&1
# 6.73. Util-linux-2.32.1
echo "Building: 6.73. Util-linux-2.32.1"
sh /scripts/util-linux-2.32.1.sh > /sources/logs/util-linux-2.32.1 2>&1
# 6.74. Man-DB-2.8.4
echo "Building: 6.74. Man-DB-2.8.4"
sh /scripts/man-db-2.8.4.sh > /sources/logs/man-db-2.8.4 2>&1
# 6.75. Tar-1.30
echo "Building: 6.75. Tar-1.30"
sh /scripts/tar-1.30.sh > /sources/logs/tar-1.30 2>&1
# 6.76. Texinfo-6.5
echo "Building: 6.76. Texinfo-6.5"
sh /scripts/texinfo-6.5.sh > /sources/logs/texinfo-6.5 2>&1
# 6.77. Vim-8.1
echo "Building: 6.77. Vim-8.1"
sh /scripts/vim-8.1.sh > /sources/logs/vim-8.1 2>&1
