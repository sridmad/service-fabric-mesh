#!/bin/sh

../scripts/linux/build_and_publish.sh counter.imageinfo.txt "$@" || {
    echo Failed to process image for counter
    exit 1
}

echo Successfully build counter image.
exit 0
