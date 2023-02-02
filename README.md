# ROS2 Docker installation

## 1. Install Docker Engine on Ubuntu

Update the apt package index and install packages to allow apt to use a repository over HTTPS:

```
sudo apt-get update

sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
```

Add Docker’s official GPG key:

```
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
```

Use the following command to set up the repository:
```
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```

Update the apt package index:
```
sudo apt-get update
```
```
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
```

Verify that the Docker Engine installation is successful by running the hello-world image:
```
sudo docker run hello-world
```

## 2. Manage Docker as a non-root user

Create the docker group.
```
sudo groupadd docker
```

Add your user to the docker group.
```
sudo usermod -aG docker $USER
```

Activate the changes to groups
```
newgrp docker
```

Verify that you can run `docker` commands without `sudo`
```
docker run hello-world
```

## 3. Install the ROS2 Docker Image

Create a folder which will contain all the required files
```
mkdir ROS2
cd ROS2
```

Clone the `ros2_docker_installation` repository
```
git clone https://github.com/MarineAutonomy/ros2_docker_installation.git
```
```
cd ros2_docker_installation
```

Build the Docker Image from the Dockerfile
```
./docker.sh
```








