#!/bin/bash


echo $(date +%d)"-"$(date +%m)

echo "-"

if [[ $(date +%T) > 12 ]]; then
  echo " $(date +%r)pm "
else
  echo " $(date +%r)am "
fi
