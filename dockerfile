FROM ubuntu/apache2
Copy * /var/www/html/


echo "Lets build Docker image"
sleep 15
docker build -t abhaykr2/d2
docker login -u abhaykr2 -p $Admin@123
docker push abhaykr2/d2
docker ps -a | grep 'mycontainer' && docker stop mycontainer && docker rm mycontainer
docker run --name mycontainer mycontainer -d -p 80:80 abhaykr2/d2
echo "Build successful"
ssh admin@172.31.84.204  ssh admin@172.31.84.204 docker ps -a | grep 'mycontainer' && docker stop mycontainer && docker rm mycontainer && docker run --name mycontainer mycontainer -d -p 80:80 abhaykr2/d2 
