FROM ubuntu:20.04
LABEL MAINTAINER casio.pro

COPY . .
WORKDIR /usr/src/

RUN apt-get update && apt-get install -y tzdata
# timezone setting
ENV TZ=Asia/Tokyo

RUN apt-get upgrade
RUN apt-get install -y openjdk-8-jre openjdk-8-jdk mysql-client mysql-server git vim wget unzip

RUN wget https://services.gradle.org/distributions/gradle-6.7.1-all.zip 
RUN unzip -d /opt/gradle ./gradle-6.7.1-all.zip
RUN rm gradle-6.7.1-all.zip

ENV GRADLE_HOME=/opt/gradle/gradle-6.7.1
ENV PATH=${GRADLE_HOME}/bin:${PATH}

WORKDIR /usr/src/project
