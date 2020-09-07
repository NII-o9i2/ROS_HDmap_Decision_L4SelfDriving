#include "hdmapYtt.h"

int main(int argc, char **argv) {
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
	 
}
void location2msg(const ehr_api* api,locationsim_msgs::LOCATIONSIM * location){
	location->position_x = api->position_.m_stCrd.m_iLatitude;
	location->position_y = api->position_.m_stCrd.m_iLongitude;
	location->positon_yaw = api->position_.m_fRelativeHeading;
	location->velocity = api->position_.m_fSpeed;
}

void mapinfo2msg(const HDmapInfo* HDmapinfo_,ytthdmap_msgs::HdmapYtt * mapinfo){
	mapinfo->time = int(HDmapinfo_->time);
	mapinfo->isValidlane = int(HDmapinfo_->isValidlane);
	mapinfo->positionstate = int(HDmapinfo_->positionstate);
	mapinfo->curlane = int(HDmapinfo_->curlane);
	
	mapinfo->istunnel = bool(HDmapinfo_->istunnel);
	mapinfo->speedlim = double(HDmapinfo_->speedlim);
	mapinfo->nextlaneCH = int(HDmapinfo_->nextlaneCH);
	int loc = 0;
	int loc1 = 0;
	for (auto iter = HDmapinfo_->laneinfo.begin();iter!= HDmapinfo_->laneinfo.end();iter++){
		mapinfo->laneinfo[loc].id = iter->id;
		mapinfo->laneinfo[loc].width = iter->width;
		mapinfo->laneinfo[loc].IsPartofRouting = iter->IsPartofRouting;
		mapinfo->laneinfo[loc].type = iter->type;
		mapinfo->laneinfo[loc].direction = iter ->direction;
		mapinfo->laneinfo[loc].length = iter->length;
		//centerline
		mapinfo->laneinfo[loc].centerline.type = iter->centerline.type;
		mapinfo->laneinfo[loc].centerline.linetype = iter->centerline.lineType;
		mapinfo->laneinfo[loc].centerline.pointnum = iter->centerline.pointnum;
		loc1 = 0;
		for(auto iter1 = iter->centerline.point.begin();iter1 !=iter->centerline.point.end();iter1++){
			mapinfo->laneinfo[loc].centerline.point[loc1].x = iter1->x;
			mapinfo->laneinfo[loc].centerline.point[loc1].y = iter1->y;
			mapinfo->laneinfo[loc].centerline.point[loc1].z = iter1->z;
			loc1++;
			if (loc1>=100) break;
		}
		//leftboundry
		mapinfo->laneinfo[loc].leftboundry.type = iter->leftboundry.type;
		mapinfo->laneinfo[loc].leftboundry.linetype = iter->leftboundry.lineType;
		mapinfo->laneinfo[loc].leftboundry.pointnum = iter->leftboundry.pointnum;
		loc1 = 0;
		for(auto iter1 = iter->leftboundry.point.begin();iter1 !=iter->leftboundry.point.end();iter1++){
			mapinfo->laneinfo[loc].leftboundry.point[loc1].x = iter1->x;
			mapinfo->laneinfo[loc].leftboundry.point[loc1].y = iter1->y;
			mapinfo->laneinfo[loc].leftboundry.point[loc1].z = iter1->z;
			loc1++;
			if (loc1>=100) break;
		}
		//rightboundry
		mapinfo->laneinfo[loc].rightboundry.type = iter->rightboundry.type;
		mapinfo->laneinfo[loc].rightboundry.linetype = iter->rightboundry.lineType;
		mapinfo->laneinfo[loc].rightboundry.pointnum = iter->rightboundry.pointnum;
		loc1 = 0;
		for(auto iter1 = iter->rightboundry.point.begin();iter1 !=iter->rightboundry.point.end();iter1++){
			mapinfo->laneinfo[loc].rightboundry.point[loc1].x = iter1->x;
			mapinfo->laneinfo[loc].rightboundry.point[loc1].y = iter1->y;
			mapinfo->laneinfo[loc].rightboundry.point[loc1].z = iter1->z;
			loc1++;
			if (loc1>=100) break;
		}

		loc++;
	}


  //  S_STOPLINE stopline;

}