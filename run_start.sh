#!/bin/bash
{
gnome-terminal -t "start_robot" -x bash -c "roscore;exec bash"
}&
{
gnome-terminal -t "start_robot" -x bash -c "cd ehp/eph; ./pack/install.sh ;./pack/EHP.sh;exec bash"
}&
{
gnome-terminal -t "start_robot" -x bash -c " source devel/setup.bash;  rosrun ytthdmap ytthdmap;exec bash"
}&

{
gnome-terminal -t "start_robot" -x bash -c " source devel/setup.bash ;rosrun planning planning;exec bash"
}&

