#!/usr/bin/env bash
lscpu | sed -nE '/^CPU\(s\):/ p'
echo "======="
echo "Memory:"
echo "=======" 
free -h |sed -nE ' s/Gi/ Gigabytes/g; 1 s/  */\t\t/g; 1,2 p'

echo
echo "Disks:"
echo "======"
df -h | sed -nE '/[0-9]+T/ p'
echo
echo "Date:"
echo "====="
date +"%A, %d %B %Y.%r %Z" | sed -nE 's/AM/a.m./; s/PM/p.m./; s/(EST)/Eastern Standard/p'

