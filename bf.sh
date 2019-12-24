#!/bin/bash
TAR_CMD='tar -cJf'
B_FILE_TMPL=backup
if [ "$1" != "" ]; then
  for bdir in $1 $2 $3 $4 $5 $6 $7 $8 $9; do
    FILE_NAME=$B_FILE_TMPL-`echo $bdir | tr '/' '-'`.tar.xz
    $TAR_CMD $HOME/$FILE_NAME $bdir
  done
else
  echo "Usage: " $0 " dir"
fi
