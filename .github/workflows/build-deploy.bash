#!/bin/bash

builddeploy () {
  d=${0#*/}
  echo Processing \"${d}\"

  TAG=${DOCKERHUB_USER}/devcontainer_${d}
  docker build -t $TAG -f ./${d}/Dockerfile .
  docker push $TAG
}
export -f builddeploy
find . -maxdepth 1 -type d \( ! -name ".*" \) -exec bash -c 'builddeploy "$0"' {} \;