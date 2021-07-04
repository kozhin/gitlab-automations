#!/bin/bash
GITLAB_BACKUP_PATH="/home/user/backup/gitlab.gz"
GITLAB_NAME="gitlab"

# Create GitLab full data & config backup
echo 'Backing up GitLab instance...'
docker export $GITLAB_NAME | gzip > $GITLAB_BACKUP_PATH
echo 'Done'

exit 0
