#!/bin/bash
GITLAB_RUNNER_CONFIG="gitlab_runner_config"
GITLAB_HOST_NAME="git.CHANGEME"
GITLAB_INTERNAL_IP="CHANGEME"

# Run GitLab Runner: register action
docker run --rm -t -i \
    -v $GITLAB_RUNNER_CONFIG:/etc/gitlab-runner \
    --add-host $GITLAB_HOST_NAME:$GITLAB_INTERNAL_IP \
    gitlab/gitlab-runner register
