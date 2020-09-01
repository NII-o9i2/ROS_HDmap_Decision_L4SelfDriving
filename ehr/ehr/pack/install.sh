#!/bin/sh 
sudo rm ./libicudata.so.56
sudo rm ./libicui18n.so.56
sudo rm ./libicuuc.so.56
sudo rm ./libQt5Core.so.5

sudo ln -s ./libicudata.so.56.1 ./libicudata.so.56
sudo ln -s ./libicui18n.so.56.1 ./libicui18n.so.56
sudo ln -s ./libicuuc.so.56.1 ./libicuuc.so.56
sudo ln -s ./libQt5Core.so.5.12.4 ./libQt5Core.so.5
