#!/usr/bin/env bash

DIR_THIS="$( cd "$(dirname "$0")" ; pwd -P )"

while (( "$#" )); do
  pxyz=$1
  echo "[ px py pz ox oy oz ow ]" > $pxyz.pose
  head -n 8 $pxyz | tail -n 7 | tr '\n' ' ' >> $pxyz.pose
  roslaunch --wait $DIR_THIS/load_one.launch cloud:=$pxyz skip:=11 pose:=$pxyz.pose
  shift
done

