#!/bin/bash

CONTAINER_ID_FPATH=$(mktemp -d)

docker run \
    -ti --rm \
    --network host \
    --cidfile ${CONTAINER_ID_FPATH}/containerid \
    -v ${CONTAINER_ID_FPATH}/containerid:/containerid \
    -v $(pwd):/opt \
    crazychenz/xltr:ubuntu-20.04 \
    pipenv $@

rm -r ${CONTAINER_ID_FPATH}

