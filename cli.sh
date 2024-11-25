#!/bin/bash
REPO_DIR="temp"
cd ${REPO_DIR}


# save all changes
git add .
git commit -m "Initial commit"

# local -> server, push the changes
GIT_REMOTE_REPO="https://github.com/eugenzio/temp.git"
git push -u origin main