#!/bin/sh

../scripts/linux/build_and_publish.sh votingdata.imageinfo.txt "$@" || {
    echo Failed to process image for votingdata
    exit 1
}

../scripts/linux/build_and_publish.sh votingweb.imageinfo.txt "$@" || {
    echo Failed to process image for votingweb
    exit 1
}

echo Successfully build voting images.
exit 0
