#!/bin/sh

../scripts/linux/build_and_publish.sh visualobjects-web.imageinfo.txt "$@" || {
    echo Failed to process image for visualobjects-web
    exit 1
}

../scripts/linux/build_and_publish.sh visualobjects-worker.imageinfo.txt "$@" || {
    echo Failed to process image for visualobjects-worker
    exit 1
}

../scripts/linux/build_and_publish.sh visualobjects-worker-rotate.imageinfo.txt "$@" || {
    echo Failed to process image for visualobjects-worker-rotate
    exit 1
}

echo Successfully build visualobjects images.
exit 0
