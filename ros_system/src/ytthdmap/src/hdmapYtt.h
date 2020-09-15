#include <ros/ros.h>
#include "ytthdmap_msgs/HdmapYtt.h"
#include "locationsim_msgs/LOCATIONSIM.h"
#include "map_server.h"

void mapinfo2msg(const HDmapInfo* HDmapinfo_,ytthdmap_msgs::HdmapYtt * mapinfo);
void location2msg(const ehr_api* api,locationsim_msgs::LOCATIONSIM * location);
void info2file(const ytthdmap_msgs::HdmapYtt * HDmapinfo_,ofstream * file);