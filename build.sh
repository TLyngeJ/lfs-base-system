#!/bin/bash
set -e

mkdir -pv /sources/logs
export MAKEFLAGS='-j 14'

echo
echo "*********************************"
echo "* Creating file and directories *"
echo "*********************************"
echo

sh /scripts/setup.sh > /sources/logs/setup 2>&1

echo
echo "*********************"
echo "* Building programs *"
echo "*********************"
echo

# 6.7. Linux-4.9.9 API Headers
echo "Building: 6.7. Linux-4.9.9 API Headers"
sh /scripts/linux-headers-4.9.9.sh > /sources/logs/linux-headers-4.9.9.sh 2>&1
# 6.8. Man-pages-4.09
echo "Building: 6.8. Man-pages-4.09"
sh /scripts/man-pages-4.09.sh > /sources/logs/man-pages-4.09 2>&1
# 6.9. Glibc-2.25
echo "Building: 6.9. Glibc-2.25 (This one takes a good while)"
sh /scripts/glibc-2.25.sh > /sources/logs/glibc-2.25 2>&1
# 6.10. Adjusting the Toolchain
echo "Building: 6.10. Adjusting the Toolchain"
sh /scripts/adjust-toolchain.sh > /sources/logs/adjust-toolchain 2>&1
# 6.11. Zlib-1.2.11
echo "Building: 6.11. Zlib-1.2.11"
sh /scripts/zlib-1.2.11.sh > /sources/logs/zlib-1.2.11 2>&1
# 6.12. File-5.30
echo "Building: 6.12. File-5.30"
sh /scripts/file-5.30.sh > /sources/logs/file-5.30 2>&1
# 6.13. Binutils-2.27
echo "Building: 6.13. Binutils-2.27"
sh /scripts/binutils-2.27.sh > /sources/logs/binutils-2.27 2>&1
# 6.14. GMP-6.1.2
echo "Building: 6.14. GMP-6.1.2"
sh /scripts/gmp-6.1.2.sh > /sources/logs/gmp-6.1.2 2>&1
# 6.15. MPFR-3.1.5
echo "Building: 6.15. MPFR-3.1.5"
sh /scripts/mpfr-3.1.5.sh > /sources/logs/mpfr-3.1.5 2>&1
# 6.16. MPC-1.0.3
echo "Building: 6.16. MPC-1.0.3"
sh /scripts/mpc-1.0.3.sh > /sources/logs/mpc-1.0.3 2>&1
# 6.17. GCC-6.3.0
echo "Building: 6.17. GCC-6.3.0 (This one takes a good while)"
sh /scripts/gcc-6.3.0.sh > /sources/logs/gcc-6.3.0 2>&1
# 6.18. Bzip2-1.0.6
echo "Building: 6.18. Bzip2-1.0.6"
sh /scripts/bzip2-1.0.6.sh > /sources/logs/bzip2-1.0.6 2>&1
# 6.19. Pkg-config-0.29.1
echo "Building: 6.19. Pkg-config-0.29.1"
sh /scripts/pkg-config-0.29.1.sh > /sources/logs/pkg-config-0.29.1 2>&1
# 6.20. Ncurses-6.0
echo "Building: 6.20. Ncurses-6.0"
sh /scripts/ncurses-6.0.sh > /sources/logs/ncurses-6.0 2>&1
# 6.21. Attr-2.4.47
echo "Building: 6.21. Attr-2.4.47"
sh /scripts/attr-2.4.47.sh > /sources/logs/attr-2.4.47 2>&1
# 6.22. Acl-2.2.52
echo "Building: 6.22. Acl-2.2.52"
sh /scripts/acl-2.2.52.sh > /sources/logs/acl-2.2.52 2>&1
# 6.23. Libcap-2.25
echo "Building: 6.23. Libcap-2.25"
sh /scripts/libcap-2.25.sh > /sources/logs/libcap-2.25 2>&1
# 6.24. Sed-4.4
echo "Building: 6.24. Sed-4.4"
sh /scripts/sed-4.4.sh > /sources/logs/sed-4.4 2>&1
# 6.25. Shadow-4.4
echo "Building: 6.25. Shadow-4.4"
sh /scripts/shadow-4.4.sh > /sources/logs/shadow-4.4 2>&1
# 6.26. Psmisc-22.21
echo "Building: 6.26. Psmisc-22.21"
sh /scripts/psmisc-22.21.sh > /sources/logs/psmisc-22.21 2>&1
# 6.27. Iana-Etc-2.30
echo "Building: 6.27. Iana-Etc-2.30"
sh /scripts/iana-etc-2.30.sh > /sources/logs/iana-etc-2.30 2>&1
# 6.28. M4-1.4.18
echo "Building: 6.28. M4-1.4.18"
sh /scripts/m4-1.4.18.sh > /sources/logs/m4-1.4.18 2>&1
# 6.29. Bison-3.0.4
echo "Building: 6.29. Bison-3.0.4"
sh /scripts/bison-3.0.4.sh > /sources/logs/bison-3.0.4 2>&1
# 6.30. Flex-2.6.3
echo "Building: 6.30. Flex-2.6.3"
sh /scripts/flex-2.6.3.sh > /sources/logs/flex-2.6.3 2>&1
# 6.31. Grep-3.0
echo "Building: 6.31. Grep-3.0"
sh /scripts/grep-3.0.sh > /sources/logs/grep-3.0 2>&1
# 6.32. Readline-7.0
echo "Building: 6.32. Readline-7.0"
sh /scripts/readline-7.0.sh > /sources/logs/readline-7.0 2>&1
# 6.33. Bash-4.4
echo "Building: 6.33. Bash-4.4"
sh /scripts/bash-4.4.sh > /sources/logs/bash-4.4 2>&1
# 6.34. Bc-1.06.95
echo "Building: 6.34. Bc-1.06.95"
sh /scripts/bc-1.06.95.sh > /sources/logs/bc-1.06.95 2>&1
# 6.35. Libtool-2.4.6
echo "Building: 6.35. Libtool-2.4.6"
sh /scripts/libtool-2.4.6.sh > /sources/logs/libtool-2.4.6 2>&1
# 6.36. GDBM-1.12
echo "Building: 6.36. GDBM-1.12"
sh /scripts/gdbm-1.12.sh > /sources/logs/gdbm-1.12 2>&1
# 6.37. Gperf-3.0.4
echo "Building: 6.37. Gperf-3.0.4"
sh /scripts/gperf-3.0.4.sh > /sources/logs/gperf-3.0.4 2>&1
# 6.38. Expat-2.2.0
echo "Building: 6.38. Expat-2.2.0"
sh /scripts/expat-2.2.0.sh > /sources/logs/expat-2.2.0 2>&1
# 6.39. Inetutils-1.9.4
echo "Building: 6.39. Inetutils-1.9.4"
sh /scripts/inetutils-1.9.4.sh > /sources/logs/inetutils-1.9.4 2>&1
# 6.40. Perl-5.24.1
echo "Building: 6.40. Perl-5.24.1"
sh /scripts/perl-5.24.1.sh > /sources/logs/perl-5.24.1 2>&1
# 6.41. XML::Parser-2.44
echo "Building: 6.41. XML::Parser-2.44"
sh /scripts/XML-Parser-2.44.sh > /sources/logs/XML-Parser-2.44 2>&1
# 6.42. Intltool-0.51.0
echo "Building: 6.42. Intltool-0.51.0"
sh /scripts/intltool-0.51.0.sh > /sources/logs/intltool-0.51.0 2>&1
# 6.43. Autoconf-2.69
echo "Building: 6.43. Autoconf-2.69"
sh /scripts/autoconf-2.69.sh > /sources/logs/autoconf-2.69 2>&1
# 6.44. Automake-1.15
echo "Building: 6.44. Automake-1.15"
sh /scripts/automake-1.15.sh > /sources/logs/automake-1.15 2>&1
# 6.45. Xz-5.2.3
echo "Building: 6.45. Xz-5.2.3"
sh /scripts/xz-5.2.3.sh > /sources/logs/xz-5.2.3 2>&1
# 6.46. Kmod-23
echo "Building: 6.46. Kmod-23"
sh /scripts/kmod-23.sh > /sources/logs/kmod-23 2>&1
# 6.47. Gettext-0.19.8.1
echo "Building: 6.47. Gettext-0.19.8.1"
sh /scripts/gettext-0.19.8.1.sh > /sources/logs/gettext-0.19.8.1 2>&1
# 6.48. Procps-ng-3.3.12
echo "Building: 6.48. Procps-ng-3.3.12"
sh /scripts/procps-ng-3.3.12.sh > /sources/logs/procps-ng-3.3.12 2>&1
# 6.49. E2fsprogs-1.43.4
echo "Building: 6.49. E2fsprogs-1.43.4"
sh /scripts/e2fsprogs-1.43.4.sh > /sources/logs/e2fsprogs-1.43.4 2>&1
# 6.50. Coreutils-8.26
echo "Building: 6.50. Coreutils-8.26"
sh /scripts/coreutils-8.26.sh > /sources/logs/coreutils-8.26 2>&1
# 6.51. Diffutils-3.5
echo "Building: 6.51. Diffutils-3.5"
sh /scripts/diffutils-3.5.sh > /sources/logs/diffutils-3.5 2>&1
# 6.52. Gawk-4.1.4
echo "Building: 6.52. Gawk-4.1.4"
sh /scripts/gawk-4.1.4.sh > /sources/logs/gawk-4.1.4 2>&1
# 6.53. Findutils-4.6.0
echo "Building: 6.53. Findutils-4.6.0"
sh /scripts/findutils-4.6.0.sh > /sources/logs/findutils-4.6.0 2>&1
# 6.54. Groff-1.22.3
echo "Building: 6.54. Groff-1.22.3"
sh /scripts/groff-1.22.3.sh > /sources/logs/groff-1.22.3 2>&1
# 6.55. GRUB-2.02~beta3
echo "Building: 6.55. GRUB-2.02~beta3"
sh /scripts/grub-2.02~beta3.sh > /sources/logs/grub-2.02~beta3 2>&1
# 6.56. Less-481
echo "Building: 6.56. Less-481"
sh /scripts/less-481.sh > /sources/logs/less-481 2>&1
# 6.57. Gzip-1.8
echo "Building: 6.57. Gzip-1.8"
sh /scripts/gzip-1.8.sh > /sources/logs/gzip-1.8 2>&1
# 6.58. IPRoute2-4.9.0
echo "Building: 6.58. IPRoute2-4.9.0"
sh /scripts/iproute2-4.9.0.sh > /sources/logs/iproute2-4.9.0 2>&1
# 6.59. Kbd-2.0.4
echo "Building: 6.59. Kbd-2.0.4"
sh /scripts/kbd-2.0.4.sh > /sources/logs/kbd-2.0.4 2>&1
# 6.60. Libpipeline-1.4.1
echo "Building: 6.60. Libpipeline-1.4.1"
sh /scripts/libpipeline-1.4.1.sh > /sources/logs/libpipeline-1.4.1 2>&1
# 6.61. Make-4.2.1
echo "Building: 6.61. Make-4.2.1"
sh /scripts/make-4.2.1.sh > /sources/logs/make-4.2.1 2>&1
# 6.62. Patch-2.7.5
echo "Building: 6.62. Patch-2.7.5"
sh /scripts/patch-2.7.5.sh > /sources/logs/patch-2.7.5 2>&1
# 6.63. Sysklogd-1.5.1
echo "Building: 6.63. Sysklogd-1.5.1"
sh /scripts/sysklogd-1.5.1.sh > /sources/logs/sysklogd-1.5.1 2>&1
# 6.64. Sysvinit-2.88dsf
echo "Building: 6.64. Sysvinit-2.88dsf"
sh /scripts/sysvinit-2.88dsf.sh > /sources/logs/sysvinit-2.88dsf 2>&1
# 6.65. Eudev-3.2.1
echo "Building: 6.65. Eudev-3.2.1"
sh /scripts/eudev-3.2.1.sh > /sources/logs/eudev-3.2.1 2>&1
# 6.66. Util-linux-2.29.1
echo "Building: 6.66. Util-linux-2.29.1"
sh /scripts/util-linux-2.29.1.sh > /sources/logs/util-linux-2.29.1 2>&1
# 6.67. Man-DB-2.7.6.1
echo "Building: 6.67. Man-DB-2.7.6.1"
sh /scripts/man-db-2.7.6.1.sh > /sources/logs/man-db-2.7.6.1 2>&1
# 6.68. Tar-1.29
echo "Building: 6.68. Tar-1.29"
sh /scripts/tar-1.29.sh > /sources/logs/tar-1.29 2>&1
# 6.69. Texinfo-6.3
echo "Building: 6.69. Texinfo-6.3"
sh /scripts/texinfo-6.3.sh > /sources/logs/texinfo-6.3 2>&1
# 6.70. Vim-8.0.069
echo "Building: 6.70. Vim-8.0.069"
sh /scripts/vim-8.0.069.sh > /sources/logs/vim-8.0.069 2>&1
