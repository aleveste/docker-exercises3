#!/bin/bash
set -e

if [ "$#" -ne 2 ]; then
  echo "Usage: ./builder.sh <github-repo> <docker-image>"
  exit 1
fi

GITHUB_REPO="$1"
DOCKER_REPO="$2"

REPO_NAME=$(basename "$GITHUB_REPO")

git clone "https://github.com/$GITHUB_REPO.git"

echo "$DOCKER_PWD" | docker login -u "$DOCKER_USER" --password-stdin

cd "$REPO_NAME"

docker build -t "$DOCKER_REPO" .

docker push "$DOCKER_REPO"