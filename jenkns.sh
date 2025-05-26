3. Jenkins run on aws console
 	after git configartion launch one Debian machine 
	now got aws-> launch instenace name(Jenkins_Server) -> create key pair(.ppk) -> edit -> Add security -> TCP -> Port range (8080)
	-> then launch instenc -> Now login to putty
1.nano Jenkins.sh
	#!/bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt install fontconfig git default-jre -y
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins -y
systemctl is-active jenkins
2. chmod u+x Jenkins.sh
3. ./Jenkins.sh
4.now copy public ip and run on web with port nuber 8080
5.copy Jenkins path and paste in debain machine with sudo cat path of Jenkins then output of path copy and paste to Jenkins passwd
	admin -> admin@123 -> username(Abhay) -> login -> create new item -> copy https path of github -> patse on github url both palce of GitHub in Jenkins 
	-> click build steps -> Execute shell -> whoami pwd  ls -l
		then save it
6. go to GitHub -> setting -> webhook-> add new webhook-> copy Jenkins web ip with port number and past in GitHub webhook with writ -- /github-webhook/-->add webhook
7.now in git hub machine such as local machine where git is configure
	go hter and run command git add.
	
	git add .
	git commit -m "First commit"
	git push origin master
8. Now go to webhook in git hub check it  and also go to Jenkins and check it 
========================================================================================================================================================================
4.Docker --> configure docker in local machine
1. sudo apt install docker.io
2. usermod star -aG docker
	then run duplicate putty
3. which docker
4. docker pull Debian
5. docker images
6. docker run --name mydebian -p 8000:80 -d debian
7. docker pull ubuntu/apache2
8. docker images
9. docker run --name iacsd -d -p 8001:80 ubuntu/apache2
10.docker ps -a
======================================================================================================================================================================
5. S3 bucket
	go to aws console -> type s3-> create bucket -> write bucket name -> untick block all services->tick I acknowledge ..... -> Then click create bucket
	2. Now click on buket name and then go to upload index.html file whose create in notpad and drag to past it in upload
	3.
