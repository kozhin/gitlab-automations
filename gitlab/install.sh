#!/bin/bash
GITLAB_CONFIG="gitlab_config"
GITLAB_DATA="gitlab_data"
GITLAB_LOGS="gitlab_logs"

# Create Docker volumes for GitLab
docker volume create $GITLAB_CONFIG
docker volume create $GITLAB_DATA
docker volume create $GITLAB_LOGS

# Run GitLab instance
./run.sh

exit 0
