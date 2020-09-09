/******************************************************************************
 * Copyright 2019 The Zibet Authors. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *****************************************************************************/

#include "std_planner/std_planner.h"
#include <ros/ros.h>


planning::StdPlanner planner_test;

void ytthdmapCallback(const ytthdmap_msgs::HdmapYtt maps){
    planner_test.SetHdmap(maps);
    //std::cout<<"curlane is "<< maps.curlane<<std::endl;
};
void locationCallbackconst(const locationsim_msgs::LOCATIONSIM& locs){
    //std::cout<<"location is "<< locs.position_x<<std::endl;
    planner_test.SetLocation(locs);
};

int main(int argc, char **argv)
{
/*
  	ros::init(argc, argv, "ytthdmap"); 
	ros::NodeHandle n;
	ros::Publisher pub = n.advertise<ytthdmap_msgs::HdmapYtt>("ytthdmap", 1000);
    ros::Publisher pub1 = n.advertise<locationsim_msgs::LOCATIONSIM>("locationsim",1000);
	ros::Rate loop_rate(10);
	ehr_api api_;
	struct timeval tv;
  	struct timezone tz;
  	gettimeofday(&tv,&tz);
	ytthdmap_msgs::HdmapYtt mapinfo;
	locationsim_msgs::LOCATIONSIM location_;
   	while (ros::ok()) {

    	//ytthdmap_msgs::S_POINT p1, p2;
		cout<<"processing "<<endl;
		api_.Process(tv);
		
		if (api_.GetLaneInfo()){
			cout<<"GetlaneInfo succeed !"<<endl;
		}else{
			cout<<"GetlaneInfo failed !"<<endl;
		};
		if (api_.HDmapinfo_.isValidlane == 0){
			location2msg(&api_,&location_);
		}

		mapinfo2msg(&api_.HDmapinfo_,&mapinfo);
		pub.publish(mapinfo);
		pub1.publish(location_);
		ros::spinOnce();
		loop_rate.sleep();
	}
	return 0; 
*/

    ros::init(argc, argv, "planning"); 
	ros::NodeHandle n;
	//ros::Publisher pub = n.advertise<ytthdmap_msgs::HdmapYtt>("ytthdmap", 1000);
    //ros::Publisher pub1 = n.advertise<locationsim_msgs::LOCATIONSIM>("locationsim",1000);
	ros::Subscriber sub = n.subscribe("ytthdmap",1000,ytthdmapCallback);
    ros::Subscriber sub1 = n.subscribe("locationsim",1000,locationCallbackconst);
    ros::Publisher pub = n.advertise<planning_msgs::ADCTrajectory>("planningdebug", 1000);

    ros::Rate loop_rate(10);
    while (ros::ok()) {
        std::cout<<"processing"<<std::endl;
        std::cout<<"curlane is "<< planner_test.hdmap_.curlane<<std::endl;
        std::cout<<"location is "<< planner_test.location_.position_x<<std::endl;
        planner_test.Plan();
        pub.publish(planner_test.trajectory_);
        ros::spinOnce();
		loop_rate.sleep();
    }
    return 0;

}
