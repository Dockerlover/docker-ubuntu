HOST_IP=$(hostname --all-ip-addresses | awk '{print $1}')
docker run -it -d --name ubuntu1 -p 22:22 -e HOST_IP=$HOST_IP docker-ubuntu
