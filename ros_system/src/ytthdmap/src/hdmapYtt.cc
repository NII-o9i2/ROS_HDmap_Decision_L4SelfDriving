#include "hdmapYtt.h"
#include <fstream>

int main(int argc, char **argv) {
	ros::init(argc, argv, "ytthdmap"); 
	ros::NodeHandle n;
	ros::Publisher pub = n.advertise<ytthdmap_msgs::HdmapYtt>("ytthdmap", 1000);
    ros::Publisher pub1 = n.advertise<locationsim_msgs::LOCATIONSIM>("locationsim",1000);
	ros::Rate loop_rate(10);
	ofstream file125;
	string filepath;
	filepath = "LOG/5fps_results.txt";
	file125.open(filepath);
	ehr_api api_;
	int fpsset = 0;
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
			if ((fpsset <11)&&(fpsset!=0))
			{
				file125<<"fps "<<fpsset<<endl;
				info2file(&mapinfo,&file125);
				fpsset++;
			}
			if (fpsset == 0)
			{
				fpsset ++;
			}
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
	file125.close();
	return 0; 
	 
}

void info2file(const ytthdmap_msgs::HdmapYtt * HDmapinfo_,ofstream * file){
	*file<<"time: "<<HDmapinfo_->time<<endl;
	*file<<"isvalidlane: "<<HDmapinfo_->isValidlane<<endl;
	*file<<"positionstate: "<<HDmapinfo_->positionstate<<endl;
	*file<<"curlane: "<<HDmapinfo_->curlane<<endl;
	*file<<"istunnel: "<<int(HDmapinfo_->istunnel)<<endl;
	*file<<"nextlaneCH: "<<HDmapinfo_->nextlaneCH<<endl;
	
	for (int iter = 0;iter<5;iter++){
		*file<<" the "<< iter << "laneinfo : "<<endl;
		*file<<"	id: "<<HDmapinfo_->laneinfo[iter].id<<endl;
		*file<<"	direction: "<<HDmapinfo_->laneinfo[iter].direction<<endl;
		*file<<"	type: "<<HDmapinfo_->laneinfo[iter].type<<endl;
		*file<<"	IsPartofRouting: "<<int(HDmapinfo_->laneinfo[iter].IsPartofRouting)<<endl;
		*file<<"	width: "<<HDmapinfo_->laneinfo[iter].width<<endl;
		*file<<"	centerline: ";
		*file<<"		type: "<<HDmapinfo_->laneinfo[iter].centerline.type<<endl;
		*file<<"		pointnum: "<<HDmapinfo_->laneinfo[iter].centerline.pointnum<<endl;
		*file<<"		linetype: "<<endl;
		
		for (int loc = 0;loc<100;loc++){
			*file<< HDmapinfo_->laneinfo[iter].centerline.linetype[loc]<<" ";
		}
		*file<<endl;
		*file<<"		point x : "<<endl;
		for (int loc = 0;loc<100;loc++){
			*file<<setiosflags(ios::fixed) << setprecision(7)<<HDmapinfo_->laneinfo[iter].centerline.point[loc].x<<" ";
		}
		*file<<"		point y : "<<endl;
		for (int loc = 0;loc<100;loc++){
			*file<<setiosflags(ios::fixed) << setprecision(7)<<HDmapinfo_->laneinfo[iter].centerline.point[loc].y<<" ";
		}
		*file<<endl;
		
		*file<<"	leftboundry: ";
		*file<<"		type: "<<HDmapinfo_->laneinfo[iter].leftboundry.type<<endl;
		*file<<"		pointnum: "<<HDmapinfo_->laneinfo[iter].leftboundry.pointnum<<endl;
		*file<<"		linetype: "<<endl;
		
		for (int loc = 0;loc<100;loc++){
			*file<< HDmapinfo_->laneinfo[iter].leftboundry.linetype[loc]<<" ";
		}
		*file<<endl;
		*file<<"		point x : "<<endl;
		for (int loc = 0;loc<100;loc++){
			*file<<setiosflags(ios::fixed) << setprecision(7)<<HDmapinfo_->laneinfo[iter].leftboundry.point[loc].x<<" ";
		}
		*file<<"		point y : "<<endl;
		for (int loc = 0;loc<100;loc++){
			*file<<setiosflags(ios::fixed) << setprecision(7)<<HDmapinfo_->laneinfo[iter].leftboundry.point[loc].y<<" ";
		}
		*file<<endl;
		
		*file<<"	rightboundry: ";
		*file<<"		type: "<<HDmapinfo_->laneinfo[iter].rightboundry.type<<endl;
		*file<<"		pointnum: "<<HDmapinfo_->laneinfo[iter].rightboundry.pointnum<<endl;
		*file<<"		linetype: "<<endl;
		
		for (int loc = 0;loc<100;loc++){
			*file<< HDmapinfo_->laneinfo[iter].rightboundry.linetype[loc]<<" ";
		}
		*file<<endl;
		*file<<"		point x : "<<endl;
		for (int loc = 0;loc<100;loc++){
			*file<<setiosflags(ios::fixed) << setprecision(7)<<HDmapinfo_->laneinfo[iter].rightboundry.point[loc].x<<" ";
		}
		*file<<"		point y : "<<endl;
		for (int loc = 0;loc<100;loc++){
			*file<<setiosflags(ios::fixed) << setprecision(7)<<HDmapinfo_->laneinfo[iter].rightboundry.point[loc].y<<" ";
		}
		*file<<endl;
		
	}

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
		mapinfo->laneinfo[loc].centerline.pointnum = iter->centerline.pointnum;
		loc1 = 0;
		for(auto iter1 = iter->centerline.point.begin();iter1 !=iter->centerline.point.end();iter1++){
			mapinfo->laneinfo[loc].centerline.point[loc1].x = iter1->x;
			mapinfo->laneinfo[loc].centerline.point[loc1].y = iter1->y;
			mapinfo->laneinfo[loc].centerline.point[loc1].z = iter1->z;
			mapinfo->laneinfo[loc].centerline.linetype[loc1] = iter->centerline.lineType[loc1];
			loc1++;
			if (loc1>=100) break;
		}
		//leftboundry
		mapinfo->laneinfo[loc].leftboundry.type = iter->leftboundry.type;
		mapinfo->laneinfo[loc].leftboundry.pointnum = iter->leftboundry.pointnum;
		loc1 = 0;
		for(auto iter1 = iter->leftboundry.point.begin();iter1 !=iter->leftboundry.point.end();iter1++){
			mapinfo->laneinfo[loc].leftboundry.point[loc1].x = iter1->x;
			mapinfo->laneinfo[loc].leftboundry.point[loc1].y = iter1->y;
			mapinfo->laneinfo[loc].leftboundry.point[loc1].z = iter1->z;
			mapinfo->laneinfo[loc].leftboundry.linetype[loc1] = iter->leftboundry.lineType[loc1];
			loc1++;
			if (loc1>=100) break;
		}
		//rightboundry
		mapinfo->laneinfo[loc].rightboundry.type = iter->rightboundry.type;
		mapinfo->laneinfo[loc].rightboundry.pointnum = iter->rightboundry.pointnum;
		loc1 = 0;
		for(auto iter1 = iter->rightboundry.point.begin();iter1 !=iter->rightboundry.point.end();iter1++){
			mapinfo->laneinfo[loc].rightboundry.point[loc1].x = iter1->x;
			mapinfo->laneinfo[loc].rightboundry.point[loc1].y = iter1->y;
			mapinfo->laneinfo[loc].rightboundry.point[loc1].z = iter1->z;
			mapinfo->laneinfo[loc].rightboundry.linetype[loc1] = iter->rightboundry.lineType[loc1];
			loc1++;
			if (loc1>=100) break;
		}

		loc++;
	}


  //  S_STOPLINE stopline;

}