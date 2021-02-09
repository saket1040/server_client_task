#include <ros/ros.h>
#include <msg_serv/MulTwoInts.h>

bool handle_mul_two_ints(msg_serv::MulTwoInts::Request &req,
          msg_serv::MulTwoInts::Response &res)
          {
            int result =req.a * req.b;
            ROS_INFO("%d * %d = %d",(int)req.a,(int)req.b,(int)result);
            res.mul=result;
            return true;
          }
 int main(int argc, char **argv) {
  ros::init(argc,argv, "mul_two_ints_server1");
  ros::NodeHandle nh;

  ros::ServiceServer server = nh.advertiseService("mul_two_ints1",handle_mul_two_ints);
  ros::spin();
}
