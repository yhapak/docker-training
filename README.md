**The Simple Docker Client-server**

To run predefined script use "./docker_script.sh server" command on one terminal and then "./docker_script.sh client" on another. 

To execute some commands by yourself:
1) in client side:
	- "sudo docker run --volume $(pwd)/scripts:/scripts --network=mynet --link=server -it --name client client bash"
	- "sudo docker run --volume $(pwd)/scripts:/scripts --network=mynet --link=server -it --name client client sh"
2) in server side:
	- "sudo docker run --mount type=bind,source=$(pwd)/scripts,target=/scripts --network=mynet -it --name server server sh"
