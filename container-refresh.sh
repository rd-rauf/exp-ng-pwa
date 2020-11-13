#!/usr/bin/env bash
echo "Stopping container.."
docker stop exp-ng-pwa
echo ""
echo "Removing container.."
docker rm -f exp-ng-pwa
echo ""
echo "Removing images.."
docker rmi -f raufabdul/exp-ng-pwa
echo ""
docker rmi -f raufabdul/exp-ng-pwa:latest
echo "Pulling latest image.."
echo ""
docker pull raufabdul/exp-ng-pwa:latest
echo ""
echo "Deploying container.."
docker run -d --name exp-ng-pwa -p 81:80 -p 4200:4200 raufabdul/exp-ng-pwa:latest
echo ""
echo "Done"
echo ""

# set -e
# BASE_IMAGE="exp-ng-pwa"
# REGISTRY="raufabdul"
# IMAGE="$REGISTRY/$BASE_IMAGE"
# CID=$(docker ps | grep $IMAGE | awk '{print $1}')
# docker pull $IMAGE

# for im in $CID
# do
#     LATEST=`docker inspect --format "{{.Id}}" $IMAGE`
#     RUNNING=`docker inspect --format "{{.Image}}" $im`
#     NAME=`docker inspect --format '{{.Name}}' $im | sed "s/\///g"`
#     echo "Latest:" $LATEST
#     echo "Running:" $RUNNING
#     if [ "$RUNNING" != "$LATEST" ];then
#         echo "upgrading $NAME"
#         docker stop $im
#         docker rm -f $NAME
#     else
#         echo "$NAME up to date"
#     fi
# done
