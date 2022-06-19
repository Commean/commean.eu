#!/bin/sh
# Please specify tag without `v` infront of the actual number.

TAG="$1"

if [ -z "$TAG" ] 
then
    echo "ERROR: No tag specified"
    exit 1
fi

npm version "$TAG"
git push
git push origin v"$TAG"
