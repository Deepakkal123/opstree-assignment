#!/bin/bash

echo "***************************"
echo "** Building jar ***********"
echo "***************************"

WORKSPACE=/home/deepak/jenkins/jenkins_data/jenkins_home/workspace/CI-pipe

/usr/bin/docker run --rm  -v  $WORKSPACE/simple-java-maven-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"