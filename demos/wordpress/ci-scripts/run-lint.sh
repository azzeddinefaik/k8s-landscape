#!/bin/bash


# HERE put some code to run tests
# Use builded images to run docker
#
LINT_COMMAND="php -l"
IMAGE_URL=$CIRCLE_PROJECT_REPONAME

docker run  --rm ${IMAGE_URL}-test:${REPO_SHA1} ${LINT_COMMAND}
