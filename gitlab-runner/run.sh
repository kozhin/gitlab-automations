#/!bin/bash
GITLAB_RUNNER_CONFIG="gitlab_runner_config"
GITLAB_RUNNER_NAME="gitlab-runner"
GITLAB_HOST_NAME="git.CHANGEME"
GITLAB_INTERNAL_IP="CHANGEME"

# Run GitLab Runner
docker run -d --name $GITLAB_RUNNER_NAME --restart always \
    -v $GITLAB_RUNNER_CONFIG:/etc/gitlab-runner \
    -v /var/run/docker.sock:/var/run/docker.sock \
    --add-host $GITLAB_HOST_NAME:$GITLAB_INTERNAL_IP \
    gitlab/gitlab-runner:latest
