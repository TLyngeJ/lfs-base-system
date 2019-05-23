# Linux From Scratch build scripts

IMPORTANT NOTE!
Remember to run the [Tool-chain builder](https://github.com/TLyngeJ/lfs-toolchain-builder)
first!

This is the meaty part of the automatic Linux From Scratch builder.

This aims to make the build of LFS systems easier for experienced users.

If you have not yet build your first (or maybe even a few) LFS systems yet, then
you should head over to the (LFS)[http://www.linuxfromscratch.org/lfs/] website
and do so, before attempting to start using this one.

## Getting started
To compile the packages, run this command:
```
docker run --rm --privileged --userns=host -v /tmp/lfs/lfs:/mnt/lfs tlyngej/lfs-base-system:8.3
```

That's it!

## What's the catch?
There is no installation included. At all. You need to copy the files where
you want them to be, and mount the file system with the following commands,
after the compiling is done.
```
export $LFS=<PATH_TO_LFS_FILE_SYSTEM_HERE>

mount -v --bind /dev $LFS/dev
mount -vt devpts devpts $LFS/dev/pts -o gid=5,mode=620
mount -vt proc proc $LFS/proc
mount -vt sysfs sysfs $LFS/sys
mount -vt tmpfs tmpfs $LFS/run

if [ -h $LFS/dev/shm ]; then
  mkdir -pv $LFS/$(readlink $LFS/dev/shm)
fi

chroot "$LFS" /usr/bin/env -i              \
    HOME=/root TERM="$TERM" PS1='\u:\w\$ ' \
    PATH=/bin:/usr/bin:/sbin:/usr/sbin     \
    /bin/bash --login
```

A boot-loader is not installed. Grub is there, so following the instructions
on the LFS website should be easy enough, for an experienced user.

If you need to do any post-build operations (chapter 7 in the LFS book), like
setting up ethernet devices, this is the time to do so.

Remember to alter the fstab, re-compile the linux package, etc, as well, if you
need to.
