#!/bin/bash
docker run -d -p 8080:8080 -p 50000:50000 --restart=on-failure -v jenkins_home:/var/jenkins_home spyrosmoux/jenkins:lts-jdk17