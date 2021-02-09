#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <opencv2/opencv.hpp>
#include <opencv2/core.hpp>

#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
using namespace std;
using namespace cv;

int main(int argc,char** argv)
{
ros::init(argc,argv,"my_image_node1");
ros::NodeHandle nh;
image_transport::ImageTransport it(nh);
image_transport::Publisher pub=it.advertise("topic1",1);

//cv::WImageBuffer3_b image( cvLoadImage(argv[1], CV_LOAD_IMAGE_COLOR) );
cv::Mat image = cv::imread("/home/saket1004/catkin_ws2/src/image_task/src/img1.jpeg");
//cv::Mat image;
//image=cv::imread("/home/saket1004/catkin_ws2/src/image_task/src/img1.jpg");
 cv::waitKey(30);

//sensor_msgs::ImagePtr msg = sensor_msgs::cv_bridge::cvToImgMsg(image.Ipl(), "bgr8");
//cv_bridge::CvImagePtr msg= cv_bridge::CvImagePtr::toImageMsg(),"bgr8");


    sensor_msgs::ImagePtr msg = cv_bridge::CvImage(std_msgs::Header(), "bgr8", image).toImageMsg();
	ros::Rate loop_rate(5);
	while (nh.ok()){
		cv::imshow("view",image);
		cv::waitKey(30);
		pub.publish(msg);
		ros::spinOnce();
		loop_rate.sleep();
	}
}
