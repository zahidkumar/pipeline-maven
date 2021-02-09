#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/prod /tmp/.auth ec2-user@65.1.84.146:/tmp/.auth
scp -i /opt/prod ./jenkins/deploy/publish ec2-user@65.1.84.146:/tmp/publish
ssh -i /opt/prod ec2-user@65.1.84.146 "/tmp/publish"

