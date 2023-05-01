FROM ubuntu
MAINTAINER kensium 

RUN apt-get update && apt-get install -y curl &&  curl -fsSL https://get.docker.com -o get-docker.sh && sh get-docker.sh


RUN apt-get update && apt-get install -y curl wget sudo  openjdk-11-jdk

RUN curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
    /usr/share/keyrings/jenkins-keyring.asc > /dev/null
RUN echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
    https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
    /etc/apt/sources.list.d/jenkins.list > /dev/null


RUN apt-get update && apt-get install -y jenkins && service jenkins start


ENTRYPOINT ["bash"] 
