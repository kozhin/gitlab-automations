#!/bin/bash
GITLAB_NAME="gitlab"

echo 'Gitlab auto-update. Starting..'

# Download the latest version
docker pull gitlab/gitlab-ce:latest

# Create GitLab backup
./backup.sh

# Recreate Gitlab container using new image
echo 'Updating GitLab...'
docker stop $GITLAB_NAME && docker rm $GITLAB_NAME

./run.sh

# Remove old Gitlab image
images=$(docker images | grep '<none>' | gawk '{ print $3 }')

if [ ! -z $images ]; then
  echo 'Removing outdated images..'
  docker rmi $images
fi

echo 'Update completed.'

exit 0
