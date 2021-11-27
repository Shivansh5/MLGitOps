
# MLGitOps <img src="" />

# Overview
In this project we craeted a SBI-Loan-Status Ml-Flask App, This App simply check the loan status of a customer  [[Code]](https://github.com/Shivansh5/SBI-Loan-Status-SBI_Project-) [[Demo]](https://sbi-loan-status.herokuapp.com/). \
We write the Dockerfile to create the Docker Image of SBI-Loan-Status and push that local repository to central repository(Guthub), using Github Action we create docker image of SBI-Loan-Status and push on 
the docker hub repository [[Code]](https://github.com/Shivansh5/SBI-Loan-Status-Docker-Image) [[Demo]](https://hub.docker.com/repository/docker/shivansh90/sbi-loan-image) . \
And using Helm chart we Launch pods on kubernetes of SBI-Loan-Status image. If any changes happen in Ml-Flask App Github Action Automatically trigger and create the new image of changes code with same name and different tag and push on dockerHub. In Helm chart just we updated image tag name in value.yaml file, kubernetes Launch  new pods 
of new image and terminating the old pods without any downtime using rolling 
update strategy.
# Goal 🎯
To achieve  Automation 🤖 in Data Science Project.  

# Step To Involve  Create This Project 
### Created Ml-Flask App. 
### Created a docker image of SBI-Loan-Status App and also push on DockerHub repository.
### Using Helm Chart We Launch a pods on Kubernetes of SBI-Loan-Status image.
