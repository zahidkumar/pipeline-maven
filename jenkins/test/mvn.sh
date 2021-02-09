#!/bin/bash

echo "***************************"
echo "** Tessting code**********"
echo "***************************"

WORKSPACE=/home/ec2-user/jenkins/jenkins_home/workspace/docker-pipeline

docker run --rm  -v  $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"
