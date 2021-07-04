#!/bin/bash
GITLAB_CONFIG="gitlab_config"
GITLAB_DATA="gitlab_data"
GITLAB_LOGS="gitlab_logs"
GITLAB_NAME="gitlab"

# Run GitLab instance
docker run --detach \
  --hostname git.CHANGEME \
  --publish 443:443 --publish 80:80 --publish 2222:22 --publish 5005:5005 \
  --restart always \
  --name $GITLAB_NAME \
  --volume $GITLAB_CONFIG:/etc/gitlab \
  --volume $GITLAB_DATA:/var/opt/gitlab \
  --volume $GITLAB_LOGS:/var/log/gitlab \
  gitlab/gitlab-ce:latest
