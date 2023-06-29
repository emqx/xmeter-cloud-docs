#!/bin/bash
set -euo pipefail

## this script is to run a docker container to
## 1. render the markdown files for vitepress
## 2. serve the rendered HTML pages in a .vitepress site
##
## It takes one argument as the listner port number the
## port number which defaults to 8080

PORT="${1:-8080}"

THIS_DIR="$(cd "$(dirname "$(readlink "$0" || echo "$0")")"; pwd -P)"

docker rm doc-preview || true

docker run -p ${PORT}:8080 -it --name doc-preview \
    -v "$THIS_DIR"/directory.json:/app/docs/.vitepress/config/directory.json \
    -v "$THIS_DIR"/en_US:/app/docs/en/xmeter-cloud/latest \
    -v "$THIS_DIR"/zh_CN:/app/docs/zh/xmeter-cloud/latest \
    -e DOCS_TYPE=xmeter-cloud \
    -e VERSION=latest \
ghcr.io/emqx/docs-emqx-com-next:latest
