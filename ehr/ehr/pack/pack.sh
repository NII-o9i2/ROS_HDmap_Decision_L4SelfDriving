#!/bin/sh 
exe="test_ehr" #你需要发布的程序名称 
des="/home/dqf/svn/ehr/test/test_ehr/pack" #创建文件夹的位置 
deplist=$(ldd $exe | awk  '{if (match($3,"/")){ printf("%s "),$3 } }') 
cp $deplist $des
