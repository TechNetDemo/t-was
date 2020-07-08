# HelloWorld App with WebSphere Traditional on OCP4

In this lab, we will deploy Hello World App with WebSphere Traidtional on OCP4

Start OCP 4 Playground (OpenShift 4.2) - 60 mins

Go to `https://www.openshift.com/learn/courses/playground/`

Click `START SENARIO`

Go to `Console` tab

Login as `developer`


# Hands on Lab

- [Create Openshift Project](#create-openshift-project)
- [Deploy Hello World from Dockerfile](#deploy-hello-world-from-dockerfile)
- [Visit Deployed App](#visit-deployed-app)
- [Other Information](#other-information)


## Create Openshift Project

Switch to Developer Portal

Go to `Advanced` > `Projects`

Click `Create Project`

Input the following information and press `Create` 
- Name: `t-was`
- Display Name: `t-was`


## Deploy Hello World from Dockerfile

Click `+Add`

Click `From Dockerfile`

Input the following information and press `Create`
- Git Repo URL: `https://github.com/TechNetDemo/t-was.git`
- `Show Advanced Git Options`
- Git Reference: `ocp4`
- Container Port: `9080`
- Application Name: `hello-world`
- Name: `hello-world`


## View Build Logs

1. Go to `Topology`. 


2. Click `hello-world`, and you can see hello-world build status.


3. Go to `Resources` tab.


4. Go to `Builds` section and click `View Logs`.


## Visit Deployed App

1. Go to `Topology`. 


2. Click `hello-world`, and you can see hello-world deployment status.


3. Go to `Resources` tab.


4. Click the link provided on `Routes` section.


5. Append the url by `/sample` on web browser.



## Other Information

1. Go to `Topology`. 


2. Click `hello-world`, and you can see hello-world deployment status.


3. Go to `Resources` tab.


4. Go to `Pods` section and click `View Logs`.


5. Go to `Terminal` tab, you can login to container.






