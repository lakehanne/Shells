alias cm='catkin_make'
alias cb='catkin build'
alias jup='jupyter notebook'
alias update='sudo apt-get update'
alias install='sudo apt install -y'
alias search='apt-cache search'
alias py27on='source activate py27'
alias py27off='source deactivate py27'
alias py35on='source activate py35'
alias py35off='source deactivate py35'
alias gps='cd ~/catkin_ws/src/gps'
alias papers='cd ~/Documents/Papers'
alias shells='cd ~/Downloads/shells'
alias down='cd ~/Downloads'
alias desk='cd ~/Desktop'
alias doc='cd ~/Documents'
alias blog='cd ~/Documents/blog'
alias schol='cd ~/Desktop/scholternships'
alias shell='cd ~/Downloads/shells'
alias oncol='cd ~/Documents/NNs/RadOncol'

# delineate python2.7 from anaconda installs
alias python2.7='/usr/bin/python2.7'

export TEXINPUTS=/home/$USER/Documents/pgfplots/tex//:
export TEXINPUTS=/home/$USER/Documents/pgfplots/doc//:
export LUAINPUTS=/home/$USER/Documents/pgfplots//:

#ROS MASTER Exports
#export ROS_MASTER_URI=http://172.17.0.2:11311
#export ROS_HOSTNAME=192.168.1.7

#ROS MASTER FOR LOCAL LONNECTIONS
export ROS_MASTER_URI=http://localhost:11311
export ROS_HOSTNAME=localhost

# CUDA EXPORTS
export PATH=/usr/local/cuda-9.0/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
export LD_LIBRARY_PATH=/usr/local/cuda-9.0/lib64:/home/$USER/mujoco/mjpro150/bin:/home/$USER/mujoco/mjpro131/bin:~/Documents/NNs/radoncol/beam_optim/build/lib:~/catkin_ws/src/gps/build/lib:${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
# /home/lex/anaconda3/lib
export ROS_PACKAGE_PATH=~/catkin_ws/src/gps:~/catkin_ws/src/gps/gps_agent_pkg:~/catkin_ws/src/ral/pyrnn${ROS_PACKAGE_PATH:+${ROS_PACKAGE_PATH}}
export PYTHONPATH=~/Documents/NNs/radoncol/beam_optim/build/lib:~/Documents/NNs/radoncol/prepro_dicoms/rt5py:~/catkin_ws/src/gps:~/catkin_ws/src/ral/pyrnn:~/Documents/caffe/python:~/catkin_ws/src/gps/build/lib:~/catkin_ws/src/gps/gps_agent_pkg${PYTHONPATH:+:${PYTHONPATH}}
export CAFFE_ROOT=~/Documents/caffe/build_cudnn

#source /opt/ros/kinetic/setup.bash
source ~/catkin_ws/devel/setup.bash
source /opt/ros/r2b3/setup.bash
source /opt/ros/r2b3/share/ros2cli/environment/ros2-argcomplete.bash

RMW_IMPLEMENTATION=rmw_opensplice_cpp
source /opt/ros/r2b3/setup.bash
source /opt/ros/r2b3/share/ros2cli/environment/ros2-argcomplete.bash
RMW_IMPLEMENTATION=rmw_opensplice_cpp

if [ -d /home/$USER/anaconda2/bin ]; then
  export PATH="/home/$USER/anaconda2/bin${PATH:+:${PATH}}"
elif [ -d /home/$USER/anaconda3/bin ]; then
  export PATH="/home/$USER/anaconda3/bin${PATH:+:${PATH}}"
else
  echo "Could not find an anaconda path. Please amend your path variable manually."
fi