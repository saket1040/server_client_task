#include <ros/ros.h>
#include <actionlib/server/simple_action_server.h>

#include <action_mul/SquareNumAction.h>
#include <action_mul/SquareNumGoal.h>
#include <action_mul/SquareNumResult.h>
#include <action_mul/SquareNumFeedback.h>


class SquareNumServer {

  protected:
  ros::NodeHandle _nh;
  actionlib::SimpleActionServer<action_mul::SquareNumAction>_as;
  int _counter;

  public:
    SquareNumServer():
    _as(_nh,"/square_num",boost::bind(&SquareNumServer::onGoal,this,_1),false),
    _counter(0)
    {
      _as.start();
      ROS_INFO("Simple Action server has been started. ");
    }

  void onGoal(const action_mul::SquareNumGoalConstPtr &goal)
  {
    ROS_INFO("Goal Recieved");

    int max_sq_number = goal->max_sq_number;
    double wait_duration= goal-> wait_duration;
    ROS_INFO("Max number: %d, wait duration : %lf",max_sq_number,wait_duration);
    _counter=0;
    ros::Rate rate(1.0/wait_duration);

    bool success = false;
    bool preempted= false;

    while(ros::ok()){
      _counter++;
      if (_as.isPreemptRequested()) {
        preempted= true;
        break;
      }
      if(_counter>max_sq_number){
        break;
      }
      ROS_INFO("%d", _counter*_counter);
      action_mul::SquareNumFeedback feedback;
      feedback.percentage= (double)_counter/(double)max_sq_number;
      _as.publishFeedback(feedback);
      rate.sleep();
      }
      action_mul::SquareNumResult result;
      result.count= _counter;
      ROS_INFO("send goal result to client");

      if(preempted){
        ROS_INFO("preempted");
        _as.setPreempted(result);
      }
      else if(success){
        ROS_INFO("Success");
        _as.setSucceeded(result);
      }
      else {
        ROS_INFO("Aborted");
        _as.setAborted(result);
      }
    }

};
int main(int argc, char **argv) {
  ros::init(argc,argv,"square_num_server");
  ROS_INFO("About to start server");
  SquareNumServer server;
  ros::spin();
}
