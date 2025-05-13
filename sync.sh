#!/bin/bash
set -xe
branch=$1

cd ../util
util_sha=`git rev-parse HEAD`

cd ../web
go get github.com/wfunc/util@$util_sha
go mod tidy
