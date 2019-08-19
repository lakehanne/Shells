# system maintenance
alias update='sudo apt-get update'
alias install='sudo apt install '
alias search='apt-cache search'

# Anaconda Aliases
alias 27='source activate py27'
alias 35='source activate py35'
alias 37='source activate py37'
alias off='source deactivate'
alias jup='jupyter notebook'
alias lab='jupyter lab'

# directories nav
alias sofa='cd ~/sofa'
alias desk='cd ~/Desktop'
alias doc='cd ~/Documents'
alias down='cd ~/Downloads'
alias blog='cd ~/Documents/blog'
alias gps='cd ~/catkin_ws/src/gps'
alias papers='cd ~/Documents/Papers'
alias shells='cd ~/Downloads/shells'
alias schol='cd ~/Desktop/scholternships'
alias iab='cd ~/Documents/superchicko/IAB'

# ROS LAUNCHERS
alias torup='roslaunch toroboarm_seven_bringup bringup_real.launch'
alias torik='roslaunch torobo_ik torobo.launch'
alias torgaz='roslaunch toroboarm_seven_gazebo toroboarm_world.launch pause:=true'
alias cm='catkin_make'
alias cb='catkin build'
alias ctkn='cd ~/catkin_ws'

# delineate python2.7 from anaconda installs
alias python2.7='/usr/bin/python2.7'

# Chrome size for team viewer?
export CHROME_REMOTE_DESKTOP_DEFAULT_DESKTOP_SIZES=1024x768
# Install Ruby Gems to ~/gems
export GEM_HOME=$HOME/gems

# PATHS EXPORTS
export PATH=$HOME/gems/bin:/usr/local/cuda-9.0/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/usr/local/opt/gettext/bin:/usr/local/opt/openssl/bin:/usr/local/texlive/2019/bin/x86_64-linux:${PATH:+:${PATH}}
export MANPATH=/usr/local/texlive/2019/texmf-dist/doc/man
export INFOPATH=/usr/local/texlive/2019/texmf-dist/doc/info
export LD_LIBRARY_PATH=/usr/local/cuda-9.0/lib64:/home/$USER/mujoco/mjpro150/bin:/home/$USER/mujoco/mjpro131/bin:~/Documents/NNs/radoncol/beam_optim/build/lib:~/catkin_ws/src/gps/build/lib:${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
export ROS_PACKAGE_PATH=~/catkin_ws/src/gps:~/catkin_ws/src/gps/gps_agent_pkg:~/catkin_ws/src/ral/pyrnn${ROS_PACKAGE_PATH:+${ROS_PACKAGE_PATH}}
export PYTHONPATH=~/Documents/NNs/RadOncol/beam_optim:~/Documents/NNs/RadOncol/beam_optim/scripts:~/Documents/NNs/RadOncol/beam_optim/:~/Documents/NNs/RadOncol:~/catkin_ws/src/gps:~/Documents/caffe/python:~/catkin_ws/src/gps/build/lib:~/catkin_ws/src/gps/gps_agent_pkg:/home/lex/Documents/NNs/RadOncol${PYTHONPATH:+:${PYTHONPATH}}
export CAFFE_ROOT=~/Documents/caffe/build_cudnn

# LATEX
export TEXINPUTS=/home/$USER/Documents/pgfplots/tex//:
export TEXINPUTS=/home/$USER/Documents/pgfplots/doc//:
export LUAINPUTS=/home/$USER/Documents/pgfplots//:

# CPP FLAGS
export LDFLAGS="-L/usr/local/opt/gettext/lib:-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/gettext/include:-I/usr/local/opt/openssl/include"

# ROS PATHS
source /opt/ros/melodic/setup.bash
source ~/catkin_ws/devel/setup.bash
#ROS MASTER Exports
#export ROS_MASTER_URI=http://172.17.0.2:11311
#export ROS_HOSTNAME=192.168.1.7
#ROS MASTER FOR LOCAL LONNECTIONS
export ROS_MASTER_URI=http://localhost:11311
export ROS_HOSTNAME=localhost


if [ -d /home/$USER/anaconda2/bin ]; then
  export PATH="/home/$USER/anaconda2/bin:${PATH:+:${PATH}}"
elif [ -d /home/$USER/anaconda3/bin ]; then
  export PATH="/home/$USER/anaconda3/bin:${PATH:+:${PATH}}"
else
  echo "Could not find an anaconda path. Please amend your path variable manually."
fi



