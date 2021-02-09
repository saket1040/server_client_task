#include <ros/ros.h>
#include <msg_serv/MulTwoInts.h>

int main(int argc, char **argv) {

  ros::init(argc,argv,"mul_two_ints_client1");
  ros::NodeHandle nh;

  ros::ServiceClient client= nh.serviceClient<msg_serv::MulTwoInts>("mul_two_ints1");

  msg_serv::MulTwoInts srv;
  srv.request.a =12;
  srv.request.b=5;

  if(client.call(srv)){
    ROS_INFO("Returned multiple is %d",(int)srv.response.mul);
  }
  else {
    ROS_WARN("service call failed");
  }

}
