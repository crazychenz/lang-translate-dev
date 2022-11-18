#!/bin/bash

CONTAINER_ID_FPATH=$(mktemp -d)
CMD_PREFIX="docker run \
    -ti --rm \
    --network host \
    --cidfile ${CONTAINER_ID_FPATH}/containerid \
    -v ${CONTAINER_ID_FPATH}/containerid:/containerid \
    -v $(pwd):/opt \
    crazychenz/xltr:ubuntu-20.04"

# -v $(pwd)/models:/home/user/.local/share/argos-translate/packages

if [ $# -gt 0 ]; then
  $CMD_PREFIX bash -li -c "${*}"
else
  $CMD_PREFIX bash -li
fi

rm -r ${CONTAINER_ID_FPATH}

