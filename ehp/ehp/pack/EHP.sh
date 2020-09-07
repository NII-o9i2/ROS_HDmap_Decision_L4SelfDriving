#!/bin/sh 
appname=`basename $0 | sed s,\.sh$,,` 
dirname=`dirname $0` 
tmp="${dirname#?}" 
if [ "${dirname%$tmp}" != "/" ]; then 
dirname=$PWD/$dirname 
fi 
LD_LIBRARY_PATH=$dirname 
QT_QPA_PLATFORM_PLUGIN_PATH=$dirname/platforms
#export QT_DEBUG_PLUGINS=1 
export LD_LIBRARY_PATH 
$dirname/$appname "$@"
