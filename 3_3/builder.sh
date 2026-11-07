#!/bin/bash
set -e

GITHUB_REPO="$1"
DOCKER_REPO="$2"

REPO_NAME=$(basename "$GITHUB_REPO")

git clone "https://github.com/$GITHUB_REPO.git"

cd "$REPO_NAME"

docker build -t "$DOCKER_REPO" .

docker push "$DOCKER_REPO"