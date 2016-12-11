#!/bin/bash

if [ $# -gt 0 ]; then
    ENTRYPOINT="--entrypoint $@"
fi

docker run \
    -it --rm \
    --memory 2048mb \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=unix$DISPLAY \
    --device /dev/snd \
    --device /dev/dri \
    --name popcorntime \
    $ENTRYPOINT \
	jerivas/popcorntime


#    -e http_proxy=localhost:3128 \

