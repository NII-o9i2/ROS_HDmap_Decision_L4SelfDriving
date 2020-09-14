#!/usr/bin/env python
# ^_^ coding=utf-8 ^_^
#
import numpy as np
import matplotlib.pyplot as plt
import datetime
import json
#import seaborn as sns

import tf
from geometry_msgs.msg import Pose
import rospy
from geometry_msgs.msg import PoseWithCovarianceStamped
from geometry_msgs.msg import PoseStamped
from nav_msgs.msg import Odometry
from std_msgs.msg import String
from planning_msgs.msg import ADCTrajectory
from planning_msgs.msg import PredictionDebug
from routing_msgs.msg import ReferenceLines 
# set seaborn plot style
# sns.set_style()

hxloc = np.array([[], [], [], [], [], []])         # history position data
planpoint = np.array([[], []])
locFlag = 0

# 取/msf_core/pose
# convariance:(x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)


def MsfCallBack(msf_pose):
    global hxloc, locFlag
    msfP = np.array([[msf_pose.pose.pose.position.x], [
                    msf_pose.pose.pose.position.y], [msf_pose.pose.pose.position.z]])
    msfQ = np.array(tf.transformations.euler_from_quaternion([msf_pose.pose.pose.orientation.x,
                                                              msf_pose.pose.pose.orientation.y,
                                                              msf_pose.pose.pose.orientation.z,
                                                              msf_pose.pose.pose.orientation.w])).reshape((3, 1))
    if msfP.any() != 0 or msfQ.any() != 0:
        locFlag = 1
    if locFlag == 1:
        hxloc = np.hstack((hxloc, np.vstack((msfP, msfQ))))


def GnssCallBack(gnss_pose):
    global hxloc, locFlag
    gnssP = np.array([[gnss_pose.pose.position.x], [
                     gnss_pose.pose.position.y], [gnss_pose.pose.position.z]])
    gnssQ = np.array(tf.transformations.euler_from_quaternion([gnss_pose.pose.orientation.x,
                                                               gnss_pose.pose.orientation.y,
                                                               gnss_pose.pose.orientation.z,
                                                               gnss_pose.pose.orientation.w])).reshape((3, 1))
    if gnssP.any() != 0 or gnssQ.any() != 0:
        locFlag = 1
    if locFlag == 1:
        hxloc = np.hstack((hxloc, np.vstack((gnssP, gnssQ))))


def AfusnCallBack(gnss_pose):
    global hxloc, locFlag
    afusP = np.array([[gnss_pose.pose.position.x], [
                     gnss_pose.pose.position.y], [gnss_pose.pose.position.z]])
    afusQ = np.array(tf.transformations.euler_from_quaternion([gnss_pose.pose.orientation.x,
                                                               gnss_pose.pose.orientation.y,
                                                               gnss_pose.pose.orientation.z,
                                                               gnss_pose.pose.orientation.w])).reshape((3, 1))
    if afusP.any() != 0 or afusQ.any() != 0:
        locFlag = 1
    if locFlag == 1:
        hxloc = np.hstack((hxloc, np.vstack((afusP, afusQ))))


def LoCallBack(lo_pose):
    global hxloc, locFlag
    loP = np.array([[lo_pose.pose.pose.position.x], [
                   lo_pose.pose.pose.position.y], [lo_pose.pose.pose.position.z]])
    loQ = np.array(tf.transformations.euler_from_quaternion([lo_pose.pose.pose.orientation.x,
                                                             lo_pose.pose.pose.orientation.y,
                                                             lo_pose.pose.pose.orientation.z,
                                                             lo_pose.pose.pose.orientation.w])).reshape((3, 1))
    if loP.any() != 0 or loQ.any() != 0:
        locFlag = 1
    if locFlag == 1:
        hxloc = np.hstack((hxloc, np.vstack((loP, loQ))))


def PlanCallBack(plan):
    global planpoint, locFlag
    global distoend
    point = np.array([[], []])
    distoend = plan.dis_to_end

    path_point = np.array(plan.path_point)
    for i in np.arange(0, 19):
        point = np.hstack(
            (point, np.array([[path_point[i].x], [path_point[i].y]])))
    for i in np.arange(19, path_point.shape[0], 20):
        point = np.hstack(
            (point, np.array([[path_point[i].x], [path_point[i].y]])))
    planpoint = point
    locFlag = 1

def Routing_CallBack(ReferenceLines):
    global routing_point
    point = np.array([[],[]])
    routing_ = routing.lines[0]
    for ii in range(90):
        point = np.hstack(
            (point, np.array([[routing_.point[10*ii].x],[routing_.point[10*ii].y]])))
    routing_point = point
    print(point)

def planning_obstacler(ADCTrajectory_self):
    # 32
    global object_predict_method, object_predict_trajectory_x, object_predict_trajectory_y, object_predict_isvalid, object_axis_x, object_axis_y, locFlag
    global object_theta,object_type,object_velocity,object_confidence,object_length,object_width
    global object_s,object_l
    selfq = ADCTrajectory_self.predict_debug
    locFlag = 1
    object_predict_method = np.array([])
    #for ii in range(0, 32):
        # object_predict_method = np.hstack(object_predict_method,propt[ii].predict_method)
   #     np.append(object_predict_method, selfq.propt[ii].predict_method)
    # 64
    object_predict_trajectory_x = np.empty([64, 10], order='C')
    object_predict_trajectory_y = np.empty([64, 10], order='C')
    object_predict_isvalid = np.empty([64, 1], order='C')
    for ii in range(0, 64):
        # 10
        sub_trajectory_x = np.array(selfq.obstacle_pred[ii].prediction_x)
        sub_trajectory_y = np.array(selfq.obstacle_pred[ii].prediction_y)
        object_predict_trajectory_x = np.insert(
            object_predict_trajectory_x, ii, sub_trajectory_x, axis=0)
        object_predict_trajectory_y = np.insert(
            object_predict_trajectory_y, ii, sub_trajectory_y, axis=0)
        object_predict_trajectory_x = np.delete(
            object_predict_trajectory_x, 64, axis=0)
        object_predict_trajectory_y = np.delete(
            object_predict_trajectory_y, 64, axis=0)

        # 1
        object_predict_isvalid = np.insert(
            object_predict_isvalid, ii, selfq.obstacle_pred[ii].is_valid, axis=0)
        object_predict_isvalid = np.delete(object_predict_isvalid, 64, axis=0)

    object_axis_x = np.empty([32, 1], order='C')
    object_axis_y = np.empty([32, 1], order='C')
    object_theta = np.empty([32, 1], order='C')
    object_type = np.empty([32, 1], order='C')
    object_velocity = np.empty([32, 1], order='C')
    object_confidence= np.empty([32, 1], order='C')
    object_length= np.empty([32, 1], order='C')
    object_width= np.empty([32, 1], order='C')
    object_s = np.empty([32, 1], order='C')
    object_l = np.empty([32, 1], order='C')

    #print('object_axis_x is :')

    for ii in range(0, 32):
        # 1
        object_axis_x = np.insert(
            object_axis_x, ii, selfq.obstacle_glbl[ii].enu_x, axis=0)
        object_axis_y = np.insert(
            object_axis_y, ii, selfq.obstacle_glbl[ii].enu_y, axis=0)
    
        '''
        object_confidence = np.insert(object_confidence,ii,selfq.obstacle_glbl[ii].confidence,axis =0)
        object_theta = np.insert(object_theta,ii,selfq.obstacle_glbl[ii].theta,axis =0)
        object_type = np.insert(object_type,ii,selfq.obstacle_glbl[ii].type,axis =0)
        object_velocity = np.insert(object_velocity,ii,selfq.obstacle_glbl[ii].velocity,axis =0)
        object_length = np.insert(object_length,ii,selfq.obstacle_glbl[ii].length,axis =0)
        object_width = np.insert(object_width,ii,selfq.obstacle_glbl[ii].width,axis =0)
        object_s = np.insert(object_s,ii,selfq.propt[ii].frenet_s,axis = 0)
        object_l = np.insert(object_l,ii,selfq.propt[ii].frenet_l,axis = 0)        
        '''
        object_axis_x = np.delete(object_axis_x, 32, axis=0)
        object_axis_y = np.delete(object_axis_y, 32, axis=0)
        '''
        object_theta = np.delete(object_theta, 32, axis=0)
        object_type = np.delete(object_type, 32, axis=0)
        object_velocity = np.delete(object_velocity, 32, axis=0)
        object_confidence = np.delete(object_confidence, 32, axis=0)
        object_length = np.delete(object_length, 32, axis=0)
        object_width = np.delete(object_width, 32, axis=0)
        object_s = np.delete(object_s, 32, axis=0)
        object_l = np.delete(object_l, 32, axis=0)
        '''
        # print(object_axis_x)

    for ii in range(0,32):
        if object_predict_isvalid[ii] > 0.5 :
            print('NO.'+str(ii)+'trajectory is :')   
            print(object_predict_trajectory_x[ii,...])
            print('NO.'+str(ii)+'trajectory is :')   
            print(object_predict_trajectory_y[ii,...])
            print(object_predict_isvalid[ii])



def main():
    global hxloc, planpoint, locFlag,routing_point
    global object_predict_method, object_predict_trajectory_x, object_predict_trajectory_y, object_predict_isvalid, object_axis_x, object_axis_y
    global object_theta,object_type,object_velocity,object_confidence,object_length,object_width
    global object_s,object_l
    global distoend
    rospy.init_node('pyplot_planning', anonymous=True)
    #print('begin main')
    # Subscriber
#    rospy.Subscriber("/changed_msf", PoseWithCovarianceStamped, MsfCallBack)#msf_core/pose, changed_msf
#    rospy.Subscriber("/global_vehicle", Odometry, LoCallBack)
#    rospy.Subscriber("/zibet/sensor/gnss/init", PoseStamped, GnssCallBack)#/zibet/sensor/gnss/init, init_noise_gnss
    rospy.Subscriber("/AftMsfFusn", PoseStamped, AfusnCallBack)#/zibet/sensor/gnss/init
    rospy.Subscriber("/zibet/planning", ADCTrajectory,
                     PlanCallBack)  # /zibet/sensor/gnss/init
    rospy.Subscriber("/zibet/planning", ADCTrajectory, planning_obstacler)
    rospy.Subscriber("/zibet/routing/referencelines", ReferenceLines)
    # track
    track_url = rospy.get_param("~track_dir", r'/home/zibet/')
    plan_track = np.loadtxt(track_url + r'fpi_2.txt')
    routing_point = np.zeros([1,90])

    # plot
    plt.figure(num='planning', figsize=(20, 10))
    plt.axis('equal')
    plt.xlabel("x")
    plt.ylabel("y")
    plt.grid(True)
    plt.tight_layout()
    filename = datetime.datetime.now().strftime('data/%Y_%m_%d_%H_%M_obstacle.json')
    file_object = open(filename, 'w')
    data_obstacles = {}
    data_obstacles_tra_x =[]
    data_obstacles_tra_y =[]
    data_isvalid =[]
    data_obstacles_point =[]
   
    data_obstacles_type = []
    data_obstacles_confidence = []
    data_obstacles_velocity = []
    data_obstacles_theta = []
    data_obstacles_length = []
    data_obstacles_width = []
    data_obstacles_s =[]
    data_obstacles_l =[]  

    # t 39
    for ii in range(0,32):
         data_obstacles_tra_x.append(np.empty([0, 10], order='C'))
         data_obstacles_tra_y.append(np.empty([0, 10], order='C'))
         data_obstacles_point.append(np.empty([0, 2], order='C'))
         data_isvalid.append(np.empty([0, 1], order='C'))
         data_obstacles_type.append(np.empty([0, 1], order='C'))
         data_obstacles_confidence.append(np.empty([0, 1], order='C'))
         data_obstacles_velocity.append(np.empty([0, 1], order='C'))
         data_obstacles_theta.append(np.empty([0, 1], order='C'))
         data_obstacles_length.append(np.empty([0, 1], order='C'))
         data_obstacles_width.append(np.empty([0, 1], order='C'))
         data_obstacles_s.append(np.empty([0, 1], order='C'))
         data_obstacles_l.append(np.empty([0, 1], order='C'))
    
    data_planpoint_x = np.empty([0, 59], order='C')
    data_planpoint_y = np.empty([0, 59], order='C')
    data_distoend = np.empty([0,1],order = 'C')
    count = 0
    while not rospy.is_shutdown():
        plt.pause(0.1)
        print(routing_point)
        if locFlag == 0:
            continue
        
        plt.cla()
        plt.plot(plan_track[:,0], plan_track[:,1], label='plan_track')
        plt.plot(hxloc[0, :], hxloc[1, :], markersize=2, marker='d', markerfacecolor='yellow', label= "location")
        plt.scatter(planpoint[0], planpoint[1], label='planpoint')
        #print(planpoint.shape)
        planpoint1 = planpoint.reshape((2,59))
        data_planpoint_x = np.append(data_planpoint_x,[planpoint1[0,:]],axis = 0)
        data_planpoint_y = np.append(data_planpoint_y,[planpoint1[1,:]],axis = 0)
        data_distoend = np.append(data_distoend,[np.array([distoend])],axis = 0)
        plt.axis([planpoint[0, 0]-10, planpoint[0, 0]+10,
                  planpoint[1, 0]-10, planpoint[1, 0]+10], 'equal')
        plt.legend()
        plt.grid(True)

        locFlag = 0

        for ii in range(0, 32):
            if object_predict_isvalid[ii] > 0.5:
                plt.plot(
                    object_predict_trajectory_x[ii, :], object_predict_trajectory_y[ii, :], label='obstackle' + str(ii))
                plt.scatter(
                    object_axis_x[ii], object_axis_y[ii], label='obstacle'+str(ii), color='r')
                data_isvalid[ii]= np.append(data_isvalid[ii],[np.array([1])],axis = 0)
            else:
                data_isvalid[ii]= np.append(data_isvalid[ii],[np.array([0])],axis = 0)
                # for jj in range(0,10):
                #   plt.plot(object_predict_trajectory_x[ii,jj],object_predict_trajectory_y[ii,jj])
            data_obstacles_point[ii] = np.append(data_obstacles_point[ii],[np.array([object_axis_x[ii,0],object_axis_y[ii,0]])],axis = 0)
            data_obstacles_tra_x[ii] = np.append(data_obstacles_tra_x[ii],[object_predict_trajectory_x[ii, :]],axis = 0)
            data_obstacles_tra_y[ii] = np.append(data_obstacles_tra_y[ii],[object_predict_trajectory_y[ii, :]],axis = 0)
            #data_obstacles_confidence[ii] = np.append(data_obstacles_confidence[ii],[np.array([object_confidence[ii])],axis = 0)
            '''
            data_obstacles_confidence[ii] = np.append(data_obstacles_confidence[ii],[np.array([1],axis = 0)
            data_obstacles_type[ii] = np.append(data_obstacles_type[ii],[np.array(object_type[ii,0])],axis = 0)
            data_obstacles_velocity[ii] = np.append(data_obstacles_velocity[ii],[np.array(object_velocity[ii,0])],axis = 0)
            data_obstacles_theta[ii] = np.append(data_obstacles_theta[ii],[np.array(object_theta[ii,0])],axis = 0)
            data_obstacles_length[ii] = np.append(data_obstacles_length[ii],[np.array(object_length[ii,0])],axis = 0)
            data_obstacles_width[ii] = np.append(data_obstacles_width[ii],[np.array(object_width[ii,0])],axis = 0)
            data_obstacles_s[ii] = np.append(data_obstacles_s[ii],[np.array(object_s[ii,0])],axis = 0)
            data_obstacles_l[ii] = np.append(data_obstacles_l[ii],[np.array(object_l[ii,0])],axis = 0)
            '''
            #data_isvalid[ii]= np.append(data_isvalid[ii],[np.array([object_predict_isvalid[ii,0]])],axis = 0)
            #count = count + 1
        plt.legend()
        # rate.sleep()
    for ii in range(0,32):
        data_sub = {}
        data_sub['x_y']= data_obstacles_point[ii].tolist()
        data_sub['tra_x']= data_obstacles_tra_x[ii].tolist()
        data_sub['tra_y']= data_obstacles_tra_y[ii].tolist()
        data_sub['isvalid'] = data_isvalid[ii].tolist()
        '''
        data_sub['confidence'] = data_obstacles_confidence[ii].tolist()
        data_sub['type'] = data_obstacles_type[ii].tolist()
        data_sub['theta'] = data_obstacles_theta[ii].tolist()
        data_sub['velocity'] = data_obstacles_velocity[ii].tolist()
        data_sub['length'] = data_obstacles_length[ii].tolist()
        data_sub['width'] = data_obstacles_width[ii].tolist()
        data_sub['s'] = data_obstacles_s[ii].tolist()
        data_sub['l'] = data_obstacles_l[ii].tolist()
        '''
        data_obstacles['ID'+str(ii)] =data_sub
        
    data_path = {}
    data_path['x']= data_planpoint_x.tolist()
    data_path['y']= data_planpoint_y.tolist()
    data_path['DTE'] = data_distoend.tolist()
    data_obstacles['pathpoint'] = data_path
   # json.dump(data_obstacles,file_object)
    file_object.close()
    rospy.spin()


if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass
