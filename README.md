
# 🏦 SBI-Loan-Status-App-To-Docker-Image[GitOps] 🐋 

# Overview ✍️  
This is a simple Project In which we create a docker image of Ml-Flask App and push on Docker-Hub 🐋 Repository using Github 😺 Action. After some chages into Ml-Flask App Everytime we create an image with same name and Different Tag 🏷️ and push on Docker Hub .



# Motivation 💪
To use my SBI-Loan-Status-App in very Simple way, Don't Download any Dependcies of Related Of This Project.
# Demo 
```bash
  docker pull shivansh90/sbi-loan-image:07
```

# Step-To-Create-This Project 👣

### Step:-1
IN Same Directory You write Your Dockerfile Where Your Project Is.Obesely You Write Your  Dockerfile Outside Your Project.
![App Screenshot](https://github.com/Shivansh5/my-image/blob/main/Screenshot%20from%202021-11-26%2013-17-37.png?raw=true)


### Step-2
Push that local Directory into Central Repository (Github)

### Step-3
After Push the code into Central Repository (Github) Go to the Action Tab.
![App Screenshot](https://github.com/Shivansh5/my-image/blob/main/Screenshot%20from%202021-11-26%2013-41-37.png?raw=true)
After clicking the action button Github automatically suggest you Docker image Action (That Action Bacially Create the image but that action not able to push the created image into docker hub So,we nedd to something in yaml file).

### Step-4 
Changes something in Yaml File.
Just Copy And Paste this code , in Your Yaml File.
```bash
  name: Docker Image CI

on:
  push:
    branches: [ master ]
  pull_request:
    branches: [ master ]

jobs:

  build:

    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v2
    - name: docker login
      env:
         DOCKER_USER: ${{secrets.DOCKER_USER}}
         DOCKER_PASSWORD : ${{secrets.DOCKER_PASSWORD}}
      run: |
        docker login -u $DOCKER_USER -p $DOCKER_PASSWORD
    - name: Build the Docker image
      run: docker build . --file Dockerfile --tag shivansh90/myimage:$(date +"%M")
      
    - name: Docker Push
      run: docker push ${{secrets.DOCKER_USER}}/myimage:$(date +"%M") 
```

### Step-5
Before Commit that Yaml File Open  setting in new tab .
And Go the the Secrets Section And Create the Secrets With DOCKER_USER (Paste The users name of docker) and DOCKER_PASSWORD(Paste The Docker Password of docker hub)
![App Screenshot](https://github.com/Shivansh5/my-image/blob/main/Screenshot%20from%202021-11-26%2014-02-11.png?raw=true)

### Step-6 
And again go to the that yaml file and Commit that yaml file. And again go to the Action Tab to see your Activity. How They build an image as wll as push the image.

![App Screenshot](https://github.com/Shivansh5/my-image/blob/main/Screenshot%20from%202021-11-26%2014-10-11.png?raw=true)


### Step-7

Go to The DockerHub and see the docker image that you created
![App Screenshot](https://github.com/Shivansh5/my-image/blob/main/Screenshot%20from%202021-11-26%2014-14-03.png?raw=true)

### Step-8 
If you have requirement to change something in your flask app, As soon as you changes something in your flask app and commit changes into the github,Just click on Action tab Github automatically create new images of your changes code and push that new image into the DockerHub With same name of image With different Tag 🏷️.





# Set-up Docker in your system 💻 .


For Windows 🪟
```bash
  https://docs.docker.com/desktop/windows/install/
```

For Ubuntu 🐧

```bash
  https://docs.docker.com/engine/install/ubuntu/
```

For Mac 🍎

```bash
  https://docs.docker.com/desktop/mac/install/
```



# Run Locally 🏃


```bash
  docker run -it --name shivansh 
  shivansh90/sbi-loan-image:07
```

# Output 🎁 

 ![App Screenshot](https://github.com/Shivansh5/my-image/blob/main/Screenshot%20from%202021-11-26%2014-39-09.png?raw=true)
 Click On this http://172.17.0.2:5000/
 ![App Screenshot](https://github.com/Shivansh5/my-image/blob/main/Screenshot%20from%202021-11-26%2014-40-15.png?raw=true)

## Authors

- [@Shivansh](https://www.linkedin.com/in/shivansh5/)

## 🔗 Social Link
[![portfolio](https://img.shields.io/badge/my_portfolio-000?style=for-the-badge&logo=ko-fi&logoColor=white)](https://sites.google.com/view/shivansh5)
[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/shivansh5/)

<img src="https://github.com/Shivansh5/my-image/blob/main/IMG_20211024_192509_1.jpg?raw=true" height=100 weight=100/>
 
