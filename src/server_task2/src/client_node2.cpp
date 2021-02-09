#include <ros/ros.h>
#include <actionlib/client/simple_action_client.h>
#include<actionlib/client/terminal_state.h>

#include <action_mul/SquareNumAction.h>
#include <action_mul/SquareNumGoal.h>
#include <action_mul/SquareNumResult.h>
#include <action_mul/SquareNumFeedback.h>

class SquareNumClient {

  protected:
    ros::NodeHandle nh1;
    actionlib::SimpleActionClient<action_mul::SquareNumAction>_ac;
  public:
    SquareNumClient():
    _ac("/square_num",true)

    {
      ROS_INFO("wait for the action server to start...");
      _ac.waitForServer();
      ROS_INFO("server is now up");
    }

    void sendGoal(){
      action_mul::SquareNumGoal goal;
      goal.max_sq_number =10;
      goal.wait_duration = 0.2;
      _ac.sendGoal(goal,
        boost::bind(&SquareNumClient::doneCb,this,_1,_2),
        boost::bind(&SquareNumClient::activeCb,this),
        boost::bind(&SquareNumClient::feedbackCb,this,_1));

      ROS_INFO("Goal has been sent");
      ros::Duration(5).sleep();
      _ac.cancelGoal();
  }
  void doneCb(const actionlib::SimpleClientGoalState& state,
    const action_mul::SquareNumResultConstPtr &result)
  {
    ROS_INFO("Finished in state: %s",state.toString().c_str());
    ROS_INFO("Count result: %d",(int)result->count);
  }
  void activeCb(){
    ROS_INFO("Goal just went active");
  }
  void feedbackCb(const action_mul::SquareNumFeedbackConstPtr &feedback)
  {
    ROS_INFO("Feedback_received, Percentage: %lf",feedback->percentage);
  }

};

int main(int argc, char **argv){
  ros::init(argc,argv,"square_num_client");
  SquareNumClient client;
  client.sendGoal();
}
