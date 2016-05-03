#!/bin/bash
set -e

mkdir -pv /scripts/logs
export MAKEFLAGS='-j 14'

echo
echo "*********************************"
echo "* Creating file and directories *"
echo "*********************************"
echo

sh /scripts/setup.sh > /scripts/logs/setup 2>&1

echo
echo "*********************"
echo "* Building programs *"
echo "*********************"
echo

# 6.7. Linux-4.4.2 API Headers
echo "Building: 6.7. Linux-4.4.2 API Headers"
sh /scripts/linux-4.4.2.sh > /scripts/logs/linux-4.4.2 2>&1
# 6.8. Man-pages-4.04
echo "Building: 6.8. Man-pages-4.04"
sh /scripts/man-pages-4.04.sh > /scripts/logs/man-pages-4.04 2>&1
# 6.9. Glibc-2.23
echo "Building: 6.9. Glibc-2.23 (This one takes a good while)"
sh /scripts/glibc-2.23.sh > /scripts/logs/glibc-2.23 2>&1
# 6.10. Adjusting the Toolchain
echo "Building: 6.10. Adjusting the Toolchain"
sh /scripts/adjust-toolchain.sh > /scripts/logs/adjust-toolchain 2>&1
# 6.11. Zlib-1.2.8
echo "Building: 6.11. Zlib-1.2.8"
sh /scripts/zlib-1.2.8.sh > /scripts/logs/zlib-1.2.8 2>&1
# 6.12. File-5.25
echo "Building: 6.12. File-5.25"
sh /scripts/file-5.25.sh > /scripts/logs/file-5.25 2>&1
# 6.13. Binutils-2.26
echo "Building: 6.13. Binutils-2.26"
sh /scripts/binutils-2.26.sh > /scripts/logs/binutils-2.26 2>&1
# 6.14. GMP-6.1.0
echo "Building: 6.14. GMP-6.1.0"
sh /scripts/gmp-6.1.0.sh > /scripts/logs/gmp-6.1.0 2>&1
# 6.15. MPFR-3.1.3
echo "Building: 6.15. MPFR-3.1.3"
sh /scripts/mpfr-3.1.3.sh > /scripts/logs/mpfr-3.1.3 2>&1
# 6.15. 6.16. MPC-1.0.3
echo "Building: 6.16. MPC-1.0.3"
sh /scripts/mpc-1.0.3.sh > /scripts/logs/mpc-1.0.3 2>&1
# 6.17. GCC-5.3.0
echo "Building: 6.17. GCC-5.3.0 (This one takes a good while)"
sh /scripts/gcc-5.3.0.sh > /scripts/logs/gcc-5.3.0 2>&1
# 6.18. Bzip2-1.0.6
echo "Building: 6.18. Bzip2-1.0.6"
sh /scripts/bzip2-1.0.6.sh > /scripts/logs/bzip2-1.0.6 2>&1
# 6.19. Pkg-config-0.29
echo "Building: 6.19. Pkg-config-0.29"
sh /scripts/pkg-config-0.29.sh > /scripts/logs/pkg-config-0.29 2>&1
# 6.20. Ncurses-6.0
echo "Building: 6.20. Ncurses-6.0"
sh /scripts/ncurses-6.0.sh > /scripts/logs/ncurses-6.0 2>&1
# 6.21. Attr-2.4.47
echo "Building: 6.21. Attr-2.4.47"
sh /scripts/attr-2.4.47.sh > /scripts/logs/attr-2.4.47 2>&1
# 6.22. Acl-2.2.52
echo "Building: 6.22. Acl-2.2.52"
sh /scripts/acl-2.2.52.sh > /scripts/logs/acl-2.2.52 2>&1
# 6.23. Libcap-2.25
echo "Building: 6.23. Libcap-2.25"
sh /scripts/libcap-2.25.sh > /scripts/logs/libcap-2.25 2>&1
# 6.24. Sed-4.2.2
echo "Building: 6.24. Sed-4.2.2"
sh /scripts/sed-4.2.2.sh > /scripts/logs/sed-4.2.2 2>&1
# 6.25. Shadow-4.2.1
echo "Building: 6.25. Shadow-4.2.1"
sh /scripts/shadow-4.2.1.sh > /scripts/logs/shadow-4.2.1 2>&1
# 6.26. Psmisc-22.21
echo "Building: 6.26. Psmisc-22.21"
sh /scripts/psmisc-22.21.sh > /scripts/logs/psmisc-22.21 2>&1
# 6.27. Procps-ng-3.3.11
echo "Building: 6.27. Procps-ng-3.3.11"
sh /scripts/procps-ng-3.3.11.sh > /scripts/logs/procps-ng-3.3.11 2>&1
# 6.28. E2fsprogs-1.42.13
echo "Building: 6.28. E2fsprogs-1.42.13"
sh /scripts/e2fsprogs-1.42.13.sh > /scripts/logs/e2fsprogs-1.42.13 2>&1
# 6.29. Iana-Etc-2.30
echo "Building: 6.29. Iana-Etc-2.30"
sh /scripts/iana-etc-2.30.sh > /scripts/logs/iana-etc-2.30 2>&1
# 6.30. M4-1.4.17
echo "Building: 6.30. M4-1.4.17"
sh /scripts/m4-1.4.17.sh > /scripts/logs/m4-1.4.17 2>&1
# 6.31. Bison-3.0.4
echo "Building: 6.31. Bison-3.0.4"
sh /scripts/bison-3.0.4.sh > /scripts/logs/bison-3.0.4 2>&1
# 6.32. Flex-2.6.0
echo "Building: 6.32. Flex-2.6.0"
sh /scripts/flex-2.6.0.sh > /scripts/logs/flex-2.6.0 2>&1
# 6.33. Grep-2.23
echo "Building: 6.33. Grep-2.23"
sh /scripts/grep-2.23.sh > /scripts/logs/grep-2.23 2>&1
# 6.34. Readline-6.3
echo "Building: 6.34. Readline-6.3"
sh /scripts/readline-6.3.sh > /scripts/logs/readline-6.3 2>&1
# 6.35. Bash-4.3.30
echo "Building: 6.35. Bash-4.3.30"
sh /scripts/bash-4.3.30.sh > /scripts/logs/bash-4.3.30 2>&1
# 6.36. Bc-1.06.95
echo "Building: 6.36. Bc-1.06.95"
sh /scripts/bc-1.06.95.sh > /scripts/logs/bc-1.06.95 2>&1
# 6.37. Libtool-2.4.6
echo "Building: 6.37. Libtool-2.4.6"
sh /scripts/libtool-2.4.6.sh > /scripts/logs/libtool-2.4.6 2>&1
# 6.38. GDBM-1.11
echo "Building: 6.38. GDBM-1.11"
sh /scripts/gdbm-1.11.sh > /scripts/logs/gdbm-1.11 2>&1
# 6.39. Expat-2.1.0
echo "Building: 6.39. Expat-2.1.0"
sh /scripts/expat-2.1.0.sh > /scripts/logs/expat-2.1.0 2>&1
# 6.40. Inetutils-1.9.4
echo "Building: 6.40. Inetutils-1.9.4"
sh /scripts/inetutils-1.9.4.sh > /scripts/logs/inetutils-1.9.4 2>&1
# 6.41. Perl-5.22.1
echo "Building: 6.41. Perl-5.22.1"
sh /scripts/perl-5.22.1.sh > /scripts/logs/perl-5.22.1 2>&1
# 6.42. XML::Parser-2.44
echo "Building: 6.42. XML::Parser-2.44"
sh /scripts/XML-Parser-2.44.sh > /scripts/logs/XML-Parser-2.44 2>&1
# 6.43. Autoconf-2.69
echo "Building: 6.43. Autoconf-2.69"
sh /scripts/autoconf-2.69.sh > /scripts/logs/autoconf-2.69 2>&1
# 6.44. Automake-1.15
echo "Building: 6.44. Automake-1.15"
sh /scripts/automake-1.15.sh > /scripts/logs/automake-1.15 2>&1
# 6.45. Coreutils-8.25
echo "Building: 6.45. Coreutils-8.25"
sh /scripts/coreutils-8.25.sh > /scripts/logs/coreutils-8.25 2>&1
# 6.46. Diffutils-3.3
echo "Building: 6.46. Diffutils-3.3"
sh /scripts/diffutils-3.3.sh > /scripts/logs/diffutils-3.3 2>&1
# 6.47. Gawk-4.1.3
echo "Building: 6.47. Gawk-4.1.3"
sh /scripts/gawk-4.1.3.sh > /scripts/logs/gawk-4.1.3 2>&1
# 6.48. Findutils-4.6.0
echo "Building: 6.48. Findutils-4.6.0"
sh /scripts/findutils-4.6.0.sh > /scripts/logs/findutils-4.6.0 2>&1
# 6.49. Gettext-0.19.7
echo "Building: 6.49. Gettext-0.19.7"
sh /scripts/gettext-0.19.7.sh > /scripts/logs/gettext-0.19.7 2>&1
# 6.50. Intltool-0.51.0
echo "Building: 6.50. Intltool-0.51.0"
sh /scripts/intltool-0.51.0.sh > /scripts/logs/intltool-0.51.0 2>&1
# 6.51. Gperf-3.0.4
echo "Building: 6.51. Gperf-3.0.4"
sh /scripts/gperf-3.0.4.sh > /scripts/logs/gperf-3.0.4 2>&1
# 6.52. Groff-1.22.3
echo "Building: 6.52. Groff-1.22.3"
sh /scripts/groff-1.22.3.sh > /scripts/logs/groff-1.22.3 2>&1
# 6.53. Xz-5.2.2
echo "Building: 6.53. Xz-5.2.2"
sh /scripts/xz-5.2.2.sh > /scripts/logs/xz-5.2.2 2>&1
# 6.54. GRUB-2.02~beta2
echo "Building: 6.54. GRUB-2.02~beta2"
sh /scripts/grub-2.02~beta2.sh > /scripts/logs/grub-2.02~beta2 2>&1
# 6.55. Less-481
echo "Building: 6.55. Less-481"
sh /scripts/less-481.sh > /scripts/logs/less-481 2>&1
# 6.56. Gzip-1.6
echo "Building: 6.56. Gzip-1.6"
sh /scripts/gzip-1.6.sh > /scripts/logs/gzip-1.6 2>&1
# 6.57. IPRoute2-4.4.0
echo "Building: 6.57. IPRoute2-4.4.0"
sh /scripts/iproute2-4.4.0.sh > /scripts/logs/iproute2-4.4.0 2>&1
# 6.58. Kbd-2.0.3
echo "Building: 6.58. Kbd-2.0.3"
sh /scripts/kbd-2.0.3.sh > /scripts/logs/kbd-2.0.3 2>&1
# 6.59. Kmod-22
echo "Building: 6.59. Kmod-22"
sh /scripts/kmod-22.sh > /scripts/logs/kmod-22 2>&1
# 6.60. Libpipeline-1.4.1
echo "Building: 6.60. Libpipeline-1.4.1"
sh /scripts/libpipeline-1.4.1.sh > /scripts/logs/libpipeline-1.4.1 2>&1
# 6.61. Make-4.1
echo "Building: 6.61. Make-4.1"
sh /scripts/make-4.1.sh > /scripts/logs/make-4.1 2>&1
# 6.62. Patch-2.7.5
echo "Building: 6.62. Patch-2.7.5"
sh /scripts/patch-2.7.5.sh > /scripts/logs/patch-2.7.5 2>&1
# 6.63. Sysklogd-1.5.1
echo "Building: 6.63. Sysklogd-1.5.1"
sh /scripts/sysklogd-1.5.1.sh > /scripts/logs/sysklogd-1.5.1 2>&1
# 6.64. Sysvinit-2.88dsf
echo "Building: 6.64. Sysvinit-2.88dsf"
sh /scripts/sysvinit-2.88dsf.sh > /scripts/logs/sysvinit-2.88dsf 2>&1
# 6.65. Tar-1.28
echo "Building: 6.65. Tar-1.28"
sh /scripts/tar-1.28.sh > /scripts/logs/tar-1.28 2>&1
# 6.66. Texinfo-6.1
echo "Building: 6.66. Texinfo-6.18"
sh /scripts/texinfo-6.1.sh > /scripts/logs/texinfo-6.1 2>&1
# 6.67. Eudev-3.1.5
echo "Building: 6.67. Eudev-3.1.5"
sh /scripts/eudev-3.1.5.sh > /scripts/logs/eudev-3.1.5 2>&1
# 6.68. Util-linux-2.27.1
echo "Building: 6.68. Util-linux-2.27.1"
sh /scripts/util-linux-2.27.1.sh > /scripts/logs/util-linux-2.27.1 2>&1
# 6.69. Man-DB-2.7.5
echo "Building: 6.69. Man-DB-2.7.5"
sh /scripts/man-db-2.7.5.sh > /scripts/logs/man-db-2.7.5 2>&1
# 6.70. Vim-7.4
echo "Building: 6.70. Vim-7.4"
sh /scripts/vim-7.4.sh > /scripts/logs/vim-7.4 2>&1
