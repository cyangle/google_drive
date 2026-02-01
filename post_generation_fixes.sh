#!/bin/sh

cd "$(dirname "$0")"

echo "Running in folder: ${PWD}"
rm ./git_push.sh
rm ./src/google_drive/recursive_hash.cr
echo "Post process code"
./bin/post_process
echo "Run crystal tool format"
crystal tool format --exclude ./local
echo "Post process code"
./bin/post_process
echo "Run crystal tool format"
crystal tool format --exclude ./local
echo "Install shards"
shards update
echo "Run ameba"
./bin/ameba
echo "Apply git patches"
[ -d "patches" ] && find ./patches -type f -name *.patch -exec git apply {} \;
echo "Run tests"
crystal spec