#!/bin/bash
GITLAB_RUNNER_CONFIG="gitlab_runner_config"

# Create volume for GitLab Runner
docker volume create $GITLAB_RUNNER_CONFIG

# Run GitLab Runner
./run.sh

# Register GitLab Runner at GitLab
./register.sh

exit 0
