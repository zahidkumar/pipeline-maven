#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u zahid2021 -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG zahid2021/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push zahid2021/$IMAGE:$BUILD_TAG
