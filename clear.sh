#!/bin/bash
echo 'stopping all container' 
docker stop $(docker ps -a -q)
echo 'remove all container'
docker rm $(docker ps -a -q)
echo 'delete all volumes'
docker volume prune
echo 'delete all networks'
docker network prune
