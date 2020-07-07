# Hello World App on Traditional WebSphere Application Server Container

In this lab, we will deploy a Hello World application on Traditional WebSphere Application Server Container (T-WAS)


# Installation

Docker Engine

https://docs.docker.com/engine/install/ 


Docker Toolbox (Windows 7)

https://github.com/docker/toolbox/releases


## Please clone this git repository to your local machine with installed docker engine / docker toolbox

For Docker Toolbox, please open `Docker Quickstart Terminal`.

Right click the terminal, and select `Properties`
- enable `QuickEdit Mode` on `Options` tab
- adjust `Window Size` on `Layout` tab



Git Clone t-was Reporsitory

    $ git clone https://github.com/TechNetDemo/t-was.git
    
    $ cd t-was
 
 
# Hands on Lab

- [Pull T-WAS Image](#pull-t\-was-image)
- [Build Hello World App Image](#build-hello-world-app-image)
- [Deploy Hello World App Container](#deploy-hello-world-app-container)
- [Verification and Monitoring](#verification-and-monitoring)
- [Visit Hello World App](#visit-hello-world-app)
- [Operational Process](#operational-process)


## Pull T-WAS Image

Image List https://hub.docker.com/r/ibmcom/websphere-traditional/tags

Pull Docker Image

    $ docker pull ibmcom/websphere-traditional:latest
    
    
 List Docker Images on local
 
    $ docker images
    
    
## Build Hello World App Image    
    
The format of docker images consist of `username/image_name:tag_name`

In Public Docker Registry, image naming convention is restricted to a two level hierarchy like `username/image_name`.

Docker Tag represents a specific version of image. It’s not mandatory to specify docker tag, but it will assign `latest` as tag_name when you leave it blank.


    docker build -t username/image_name:tag_name .
    
    $ docker build -t t-was/sample:1.0 .
    
    
## Deploy Hello World App Container

Deploy Hello World App with custom Hello World App Image.

As `9060`, `9043`, `9080` and `9443` ports may be occupied, we should publish cotainer port by mapping
- `7060` (docker host) to `9060` (docker container)
- `7043` (docker host) to `9043` (docker container)
- `7080` (docker host) to `9080` (docker container)
- `7443` (docker host) to `9443` (docker container)
        
            
		$ docker run -d --name t-was -p 7060:9060 -p 7043:9043 -p 7080:9080 -p 7443:9443 t-was/sample:1.0
  
  
## Verification and Monitoring

Get Running Docker Container

    $ docker ps


Check Container by Docker Logs

    $ docker logs t-was --follow
    

Display Running Processes of Container

    $ docker top t-was
    
    
Display Docker Container(s) Resource Usage Statistics

    $ docker stats --no-stream
    
    
Get Docker Toolbox VM IP

    $ docker-machine ip default
    

## Visit Hello World App

Hello World App `http://<Host IP / Docker Toolbox VM IP>:7080/sample`

Admin Console `http://<Host IP / Docker Toolbox VM IP>:7060/ibm/console`

Admin Console User: `wsadmin`

Admin Console Password:

	$ docker exec t-was cat /tmp/PASSWORD
	
	<Admin Passowrd>


## Operational Process

Stop Hello World Container

    $ docker stop t-was
    
    $ docker ps
    
Start Hello World Container

    $ docker start t-was
    
    $ docker ps


# Other Information
    
## Docker Container User Group

user: `was`

group: `root`

## Exposed Port 

Admin Console HTTP: `9060`

Admin Console HTTPS: `9043`

App HTTP: `9080`

App HTTPS: `9443`




