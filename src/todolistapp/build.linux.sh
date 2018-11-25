#!/bin/sh

../scripts/linux/build_and_publish.sh todoservice.imageinfo.txt "$@" || {
    echo Failed to process image for todoservice
    exit 1
}

../scripts/linux/build_and_publish.sh webfrontend.imageinfo.txt "$@" || {
    echo Failed to process image for webfrontend
    exit 1
}

echo Successfully build todolist images.
exit 0
