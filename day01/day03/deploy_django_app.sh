#!/bin/bash
<<task
Deploy a Dejango app
and handle the code for errors
task
code_clone(){
	echo "******Cloning the Django App******"
	git clone https://github.com/LondheShubham153/django-notes-app.git
}
update_packages(){
	sudo apt-get update
}
install_requirements(){
	echo "Installing Dependencies"
	sudo apt-get install docker.io nginx -y docker-compose
}
required_restarts(){
        sudo chown $USER /var/run/docker.sock
	#sudo systemctl enable docker
	#sudo systemctl enable nginx
        #sudo systemctl restart docker
}
deploy(){

	docker build -t notes-app .
	#docker run -d -p 8000:8000 notes-app:latest
        docker-compose up -d
}
echo "**************Deployment Started*************"
if ! code_clone; then
	echo "the code directory already exists"
	cd django-notes-app
fi
update_packages
if ! install_requirements; then
	echo "Installation failed"
	exit 1
fi
if ! required_restarts; then
	echo "system fault identidied"
	exit 1
fi
if ! deploy; then
	echo "Deployment failed mailing the admin"
	# sendmail
	exit 1
fi
echo "************Deployment Done**************"
