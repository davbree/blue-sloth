#!/usr/bin/env bash

set -e
set -o pipefail
set -v

curl -s -X POST https://f88658276114.ngrok.io/project/5fec7dfc6202d0f902cfd0e2/webhook/build/pull > /dev/null
curl -s -X POST https://f88658276114.ngrok.io/project/5fec7dfc6202d0f902cfd0e2/webhook/build/ssgbuild > /dev/null
hugo
curl -s -X POST https://f88658276114.ngrok.io/project/5fec7dfc6202d0f902cfd0e2/webhook/build/publish > /dev/null
