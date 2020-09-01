#include <ros/ros.h>
#include "ytthdmap_msgs/HdmapYtt.h"
#include "map_server.h"

int main(int argc, char **argv) {
	ros::init(argc, argv, "ytthdmap"); 
	ros::NodeHandle n;
	ros::Publisher pub = n.advertise<ytthdmap_msgs::HdmapYtt>("ytthdmap", 1000);
	ros::Rate loop_rate(10);
	ehr_api api_;
	struct timeval tv;
  	struct timezone tz;
  	gettimeofday(&tv,&tz);
   	while (ros::ok()) {
    	ytthdmap_msgs::HdmapYtt mapinfo;
    	ytthdmap_msgs::S_POINT p1, p2;
		p1.x = 1;
		p1.y = 2;
		p1.z = 3;

		api_.Process(tv);
		
		mapinfo.time = api_.iPathId_;
		mapinfo.isvalidlane = 33;
		mapinfo.curlane = 1;
		mapinfo.istunnel=true;
		mapinfo.speedlim = 60;

		//  mapinfo.laneinfo.centerline.point[0]= p1;
		//  mapinfo.laneinfo.centerline.point[1]= p2;

		pub.publish(mapinfo);
		ros::spinOnce();
		loop_rate.sleep();
	}
	return 0; 
}
