#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <opencv2/opencv.hpp>
#include <opencv2/core.hpp>

#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>

static const std::string OPENCV_WINDOW = "Image window";

class ImageConverter
{
  ros::NodeHandle nh_;
  image_transport::ImageTransport it_;
  image_transport::Subscriber image_sub;
  image_transport::Publisher image_pub;

 public:
  ImageConverter()
    : it_(nh_)
{
   image_sub = it_.subscribe("topic1",1,&ImageConverter::imageCb, this);
   image_pub = it_.advertise("topic2",1);

    //cv::namedWindow(OPENCV_WINDOW);
}
  ~ImageConverter()
{
   // cv::destroyWindow(OPENCV_WINDOW);
}
void thresholdImage(const sensor_msgs::ImageConstPtr& msg, sensor_msgs::ImageConstPtr& out)
{
    cv::Mat mat = cv_bridge::toCvShare(msg, "bgr8")->image;
    cv::threshold(mat,mat,100,255,1);
    out = cv_bridge::CvImage(std_msgs::Header(), "bgr8", mat).toImageMsg();
  }
  void imageCb(const sensor_msgs::ImageConstPtr& msg)
{
    cv_bridge::CvImagePtr cv_ptr;
    try
     {
	cv_ptr=cv_bridge::toCvCopy(msg,sensor_msgs::image_encodings::BGR8);
     }
    catch (cv_bridge::Exception& e)
     {
	ROS_ERROR("cv_bridge exception: %s", e.what());
        return;
     }


    sensor_msgs::ImageConstPtr thresh;
    thresholdImage(msg,thresh);

     //update gui window
     //cv::imshow(OPENCV_WINDOW, msg);
     //cv::waitKey(3);

     //image_pub.publish(cv_ptr->toImageMsg());
     image_pub.publish(msg);
 }
};

int main(int argc, char**argv)
{
    ros::init(argc, argv, "my_image_node2");
    ImageConverter ic;
    ros::spin();
    return 0;
}

/* thresold operation here
	cv::Mat image2;

	cv::threshold(msg,,0,255,3);
	//sensor_msgs::ImagePtr msg2 = sensor_msgs::cv_bridge::cvToImgMsg(image2.Ipl(), "bgr8");
	cv_bridge::CvImagePtr msg2 = cv_bridge::CvImagePtr::toImageMsg(image2),"bgr8");
*/
