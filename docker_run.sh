#/bin/bash


printf '\n\nbinding xhost to the docker engine'
xhost +local:root

printf '\n\nWould you be attaching the display? \t [y/n] \n'
read disp_resp

echo -e "\nEnter the image and tag name: e.g. \n\t<$USER/repo:tag>\n"
read repo_tag

#docker run -it --device=/dev/ttyUSB0 repo_tag
echo -e "\nAre you attaching a usb device? \t [y/n] \n"
read usb_resp

is_yes() {
	yesses={y,Y,yes,Yes,YES}
	if [[ $yesses =~ $1 ]]; then
		echo 1
	fi
	}

is_no() {
        noses={n,N,no,No,No}
        if [[ $noses =~ $1 ]]; then
                echo 1
        fi
        }
disp="/tmp/.X11-unix:/tmp/.X11-unix:ro -e DISPLAY=$DISPLAY"
usb_mode="--privileged -v /dev/bus/usb:/dev/bus/usb"

if [ $(is_yes $usb_resp)  ]  && [  $(is_yes $disp_resp) ]; then
		echo -e "running 'docker run -ti --rm $disp $usb_mode $repo_tag' "
		docker run -ti --rm $disp  $usb_mode $repo_tag
elif [ $(is_yes $usb_resp) ] && [ $(is_no $disp_resp) ]; then
	echo -e "docker run -it --rm $usb_mode $repo_tag"
        docker run -it --rm $usb_mode $repo_tag
elif [ $(is_no $usb_resp) ] && [ $(is_yes $disp_resp) ]; then
	echo -e "docker run -ti --rm $disp $repo_tag"
	docker run -ti --rm $disp $repo_tag
else [ $is_no $usb_rep ] && [ $is_no  $disp_resp ]
	echo -e "running without display or usb privileged mode"
	docker run -ti --rm $repo_tag
fi
