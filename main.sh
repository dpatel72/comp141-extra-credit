#!/bin/bash

mkdir output
cp extracredit.txt output/
cd output
cat extracredit.txt > read.txt
pwd > pwd.txt
ls > ls.txt
cp extracredit.txt copy.txt
date > date.txt
wc -w extracredit.txt > textcount.txt
ps > process.txt
head -5 process.txt > temp.txt && mv temp.txt process.txt

if command -v ifconfig &> /dev/null; then
    ifconfig | head -5 > netstat.txt
else
    ip a | head -5 > netstat.txt
fi

mount | head -5 > mount.txt
touch permissions.txt
chmod 777 permissions.txt
TESTENV1="test"
export TESTENV1
grep -o '\b\w\{3,\}\b' extracredit.txt > regex.txt
cd ..
git add .
git commit -m "Updated with script tasks for 'extracredit.txt'"
git push

