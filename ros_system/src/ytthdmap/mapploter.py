import rospy
import numpy as np 
import matplotlib.pyplot as plt 
import sys
sys.path.append("ytthdmap_msgs")
sys.path.append("locationsim_msgs")
from ytthdmap_msgs.msg import HdmapYtt
from locationsim_msgs.msg import LOCATIONSIM


def mapcallback(msgs):
    global laneinfo_
    global flag_getmsg
    point = np.array([[],[]])
    for id in range(5):
        path_point = msgs.laneinfo[id].centerline.point
        for ii in range(len(path_point)):
            point = point = np.hstack(
                (point, np.array([[path_point[ii].x], [path_point[ii].y]])))
        laneinfo_[id] = point
    flag_getmsg = 1
    print(msgs.curlane)
    
    
    

def locationsimcallback(msgs):
    global selfposition_x,selfposition_y
    global flag_getmsg
    selfposition_x = msgs.position_x
    selfposition_y = msgs.position_y
    flag_getmsg = 1
def main():
    rospy.init_node('map_listener',anonymous=True)
    rospy.Subscriber('/ytthdmap',HdmapYtt,mapcallback)
    rospy.Subscriber('/locationsim',LOCATIONSIM,locationsimcallback)
    global lanepath 
    global laneinfo_ 
    global selfposition_x,selfposition_y
    global flag_getmsg 
    laneinfo_ = {}
    flag_getmsg =0 
    for ii in range(5): 
        lanepath = np.array([[],[]])
        laneinfo_['ii']=lanepath

    while not rospy.is_shutdown():
        plt.pause(0.01)
        if flag_getmsg == 0:
            continue

        plt.cla()

        for id in range(5):
            strid = 'lane' + str(id)
            #plt.scatter(laneinfo_[id][0],laneinfo_[id][1],label= strid)
            plt.scatter(laneinfo_[id][0],laneinfo_[id][1])
        plt.scatter(selfposition_x,selfposition_y,label = 'self',color='r')
        #plt.axis([selfposition_x-200,selfposition_x+200,selfposition_y-200,selfposition_y+200],'equal')
        plt.legend()
        flag_getmsg = 0
    rospy.spin()
    plt.cla()

if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass



    