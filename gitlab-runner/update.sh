#!/bin/bash
GITLAB_RUNNER_NAME="gitlab-runner"

# Fetch new GitLab Runner image
docker pull gitlab/gitlab-runner:latest

# Stop and remove current GitLab Runner
docker stop $GITLAB_RUNNER_NAME && docker rm $GITLAB_RUNNER_NAME

# Run new instance of GitLab Runner
./run.sh

exit 0
