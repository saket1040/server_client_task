#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <opencv2/opencv.hpp>
#include <opencv2/core.hpp>

#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>

void imagecallback(const sensor_msgs::ImageConstPtr& msg)
{
	//sensor_msgs::cv_bridge bridge;
        cv_bridge::CvImagePtr cv_ptr;
	try
	{
		//cvShowImage("view", cv_ptr.imgMsgToCv(msg, "bgr8"));
    		 cv::imshow("view", cv_bridge::toCvShare(msg, "bgr8")->image);
		cv::waitKey(30);

	}
	catch (cv_bridge::Exception& e)
//sensor_msgs::cv_bridge
	{
		ROS_ERROR("Could not convert from '%s' to 'bgr8'.", msg->encoding.c_str());
	}
}
  int main(int argc,char **argv)
{
  ros::init(argc, argv, "my_image_node3");
  ros::NodeHandle nh;

  //cvNamedWindow("view");
  //cvStartWindowThread();

  image_transport::ImageTransport it(nh);
  image_transport::Subscriber sub = it.subscribe("topic2",1,imagecallback);

  while (nh.ok()){
		ros::spinOnce();
		//loop_rate.sleep();
	}

  ros::spin();
  cvDestroyWindow("view");
}
     
