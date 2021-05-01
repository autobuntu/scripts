#!/bin/bash

names="$1"

for mount_name in $names
do
  echo $mount_name
  ((mounted "$mount_name" && echo "$mount_name already mounted! skipping...") || ((echo "mounting $mount_name" && mount "/media/$mount_name" && echo "$mount_name mounted successfully!") || (echo "failed to mount $mount_name!")))
done
