#!/bin/bash
set -Eeuxo pipefail

VERSION=1.21.2

rm -rf /usr/local/go || true

apt-get update -y
apt-get install -y ca-certificates curl gnupg

TAR_FILE=go$VERSION.linux-amd64.tar.gz

curl -OL https://go.dev/dl/$TAR_FILE
tar -C /usr/local -xzf $TAR_FILE
rm -rf $TAR_FILE

export PATH=$PATH:/usr/local/go/bin

go install github.com/square/certigo@latest
