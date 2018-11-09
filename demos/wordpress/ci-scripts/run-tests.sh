#!/bin/bash
source $(dirname $0)/envvars
set +x

docker run  --rm ${IMAGE_URL}-test:${REPO_SHA1} ${TEST_COMMAND}
