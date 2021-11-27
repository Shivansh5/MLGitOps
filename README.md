
# MLGitOps 
<img src="https://raw.githubusercontent.com/Shivansh5/my-image/main/Untitled%20design.gif">

# Overview ✍️
<b>In this project we craeted a SBI-Loan-Status Ml-Flask App, This App simply check the loan status of a customer  [[Code]](https://github.com/Shivansh5/SBI-Loan-Status-SBI_Project-) [[Demo]](https://sbi-loan-status.herokuapp.com/). \
We write the Dockerfile to create the Docker Image of SBI-Loan-Status and push that local repository to central repository(Guthub), using Github Action we create docker image of SBI-Loan-Status and push on 
the docker hub repository [[Code]](https://github.com/Shivansh5/SBI-Loan-Status-Docker-Image) [[Demo]](https://hub.docker.com/repository/docker/shivansh90/sbi-loan-image) . \
And using Helm chart we Launch pods on kubernetes of SBI-Loan-Status image. If any changes happen in Ml-Flask App Github Action Automatically trigger and create the new image of changes code with same name and different tag and push on dockerHub. In Helm chart just we updated image tag name in value.yaml file, kubernetes Launch  new pods 
of new image and terminating the old pods without any downtime using rolling 
update strategy.</b>
# Goal 🎯
<b>To achieve  Automation 🤖 in Data Science Project.</b>  

# Step To Involve  Create This Project 👣 
# <br>1.Created Ml-Flask App. 
## Demo
Link:- https://sbi-loan-status.herokuapp.com/
![App Screenshot](https://github.com/Shivansh5/my-image/blob/main/Screenshot%20from%202021-11-21%2023-22-22.png?raw=true)

![App Screenshot](https://github.com/Shivansh5/my-image/blob/main/Screenshot%20from%202021-11-21%2023-24-19.png?raw=true)

## Overview ✍️
This is a simple flask app that is check your loan status in State Bank Of India 🏦 . 
This model is trained over real State Bank Of India Data.


## Motivation 💪
Motivation is so interesting behind the creation of this project, Actually In my village, one of my Best friends father say that last five days he goes SBI Bank only to know Bank give me a loan or not because there are something issues with the previous loan (he already clear the loan). That time suddenly in my mind comes to the idea of why we do not create such type of model that takes some parameter and based upon this parameter the model predicts the loan status. I know banks give loans or not it depends upon other factors but it gives at least a high-level idea.
## Introduction 🙋‍♀️

***.*** Loan-Prediction.


***.*** Understanding the problem statement is the first and foremost step. This
would help you give an intuition of what you will face ahead of time. Let 
us see the problem statement.

***.*** Dream Housing Finance company deals in all home loans. They have
presence across all urban, semi urban and rural areas. Customer first
apply for home loan after that company validates the customer eligibility
for loan. Company wants to automate the loan eligibility process (real
time) based on customer detail provided while filling online application
form. These details are Gender, Marital Status, Education, Number of
Dependents, Income, Loan Amount, Credit History and others. To
automate this process, they have given a problem to identify the
customers segments, those are eligible for loan amount so that they can
specifically target these customers.

## The Classification problem
***.*** It is a classification problem where we have to predict whether a loan
would be approved or not. In a classification problem, we have to
predict discrete values based on a given set of independent
variable(s). Classification can be of two types: \

***.*** Binary Classification : In this classification we have to predict either of
the two given classes. For example: classifying the gender as male or
female, predicting the result as win or loss, etc. Multiclass
Classification : Here we have to classify the data into three or more
classes. For example: classifying a movie's genre as comedy, action or
romantic, classify fruits as oranges, apples, or pears, etc. \

***.*** Loan prediction is a very common real-life problem that each retail
bank faces atleast once in its lifetime. If done correctly, it can save a
lot of man hours at the end of a retail bank.
## FEATURES PRESENT IN LOAN PREDICTION
***.*** Loan_ID – The ID number generated by the bank which is giving loan. \
***.*** Gender – Whether the person taking loan is male or female. \
***.*** Married – Whether the person is married or unmarried. \
***.*** Dependents – Family members who stay with the person. \
***.*** Education – Educational qualification of the person taking loan. \
***.*** Self_Employed – Whether the person is self-employed or not. \
***.*** ApplicantIncome – The basic salary or income of the applicant per month. \
***.*** CoapplicantIncome – The basic income or family members. \
***.*** LoanAmount – The amount of loan for which loan is applied. \
***.*** Loan_Amount_Term – How much time does the loan applicant take to pay the loan. \
***.*** Credit_History – Whether the loan applicant has taken loan previously from same bank.\
***.*** Property_Area – This is about the area where the person stays ( Rural/Urban).\
***.*** Property_Area – This is about the area where the person stays ( Rural/Urban).\
***.*** LOAN_STATUS – Based on the mentioned features, the machine learning
algorithm decides whether the person should be give loan or not.


## Run Locally

Clone the project

```bash
  git clone https://github.com/Shivansh5/SBI-Loan-Status-SBI_Project-
```

Go to the project directory

```bash
  cd SBI-Loan-Status-SBI_Project-
```

Install dependencies

```bash
  pip install requirements.txt
```

Start the server

```bash
  flask run app.py
```
<br>



# <b>2.Created a docker image of SBI-Loan-Status App and also push on DockerHub repository.</b>
# <br>🏦 SBI-Loan-Status-App-To-Docker-Image 🐋 

# Overview ✍️  
In which we create a docker image of Ml-Flask App and push on Docker-Hub 🐋 Repository using Github 😺 Action. After some chages into Ml-Flask App Everytime we create an image with same name and Different Tag 🏷️ and push on Docker Hub .



# Motivation 💪
To use my SBI-Loan-Status-App in very Simple way, Don't Download any Dependcies of Related Of This Project.
# Demo 
```bash
  docker pull shivansh90/sbi-loan-image:07
```

# Step-To-Create-This Project 👣

### Step:-(i)
IN Same Directory You write Your Dockerfile Where Your Project Is.Obesely You Write Your  Dockerfile Outside Your Project.
![App Screenshot](https://github.com/Shivansh5/my-image/blob/main/Screenshot%20from%202021-11-26%2013-17-37.png?raw=true)


### Step-(ii)
Push that local Directory into Central Repository (Github)

### Step-(iii)
After Push the code into Central Repository (Github) Go to the Action Tab.
![App Screenshot](https://github.com/Shivansh5/my-image/blob/main/Screenshot%20from%202021-11-26%2013-41-37.png?raw=true)
After clicking the action button Github automatically suggest you Docker image Action (That Action Bacially Create the image but that action not able to push the created image into docker hub So,we nedd to something in yaml file).

### Step-(iv) 
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

### Step-(v)
Before Commit that Yaml File Open  setting in new tab .
And Go the the Secrets Section And Create the Secrets With DOCKER_USER (Paste The users name of docker) and DOCKER_PASSWORD(Paste The Docker Password of docker hub)
![App Screenshot](https://github.com/Shivansh5/my-image/blob/main/Screenshot%20from%202021-11-26%2014-02-11.png?raw=true)

### Step-(vi)
And again go to the that yaml file and Commit that yaml file. And again go to the Action Tab to see your Activity. How They build an image as wll as push the image.

![App Screenshot](https://github.com/Shivansh5/my-image/blob/main/Screenshot%20from%202021-11-26%2014-10-11.png?raw=true)


### Step-(vii)

Go to The DockerHub and see the docker image that you created
![App Screenshot](https://github.com/Shivansh5/my-image/blob/main/Screenshot%20from%202021-11-26%2014-14-03.png?raw=true)

### Step-(viii)
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
## 3.Using Helm Chart We Launch a pods on Kubernetes of SBI-Loan-Status image.
