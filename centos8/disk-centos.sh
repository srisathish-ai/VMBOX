#!/bin/bash

echo '##################################'
echo '##### Script Started #############'
echo '##################################'
ROOT_DISK_DEVICE="/dev/sda"
sudo fdisk $ROOT_DISK_DEVICE <<EOF
p
d
n
p
1
2048

w
EOF
/usr/sbin/partprobe
/usr/sbin/xfs_growfs -d /
df -h /
echo '##################################'
echo '##### Script Completed ###########'
echo '##################################'
