#!/bin/sh 
sudo rm ./libicudata.so.56
sudo rm ./libicui18n.so.56
sudo rm ./libicuuc.so.56
sudo rm ./libQt5Core.so.5
sudo rm ./libQt5Gui.so.5
sudo rm ./libQt5Network.so.5
sudo rm ./libQt5OpenGL.so.5
sudo rm ./libQt5Qml.so.5
sudo rm ./libQt5Quick.so.5
sudo rm ./libQt5QuickWidgets.so.5
sudo rm ./libQt5Widgets.so.5
sudo rm ./libQt5DBus.so.5
sudo rm ./libQt5XcbQpa.so.5

sudo ln -s ./libicudata.so.56.1 ./libicudata.so.56
sudo ln -s ./libicui18n.so.56.1 ./libicui18n.so.56
sudo ln -s ./libicuuc.so.56.1 ./libicuuc.so.56
sudo ln -s ./libQt5Core.so.5.12.4 ./libQt5Core.so.5
sudo ln -s ./libQt5Gui.so.5.12.4 ./libQt5Gui.so.5
sudo ln -s ./libQt5Network.so.5.12.4 ./libQt5Network.so.5
sudo ln -s ./libQt5OpenGL.so.5.12.4 ./libQt5OpenGL.so.5
sudo ln -s ./libQt5Qml.so.5.12.4 ./libQt5Qml.so.5
sudo ln -s ./libQt5Quick.so.5.12.4 ./libQt5Quick.so.5
sudo ln -s ./libQt5QuickWidgets.so.5.12.4 ./libQt5QuickWidgets.so.5
sudo ln -s ./libQt5Widgets.so.5.12.4 ./libQt5Widgets.so.5
sudo ln -s ./libQt5DBus.so.5.12.4 ./libQt5DBus.so.5
sudo ln -s ./libQt5XcbQpa.so.5.12.4 ./libQt5XcbQpa.so.5
