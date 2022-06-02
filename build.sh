#!/bin/bash

ROOT_DIR="$(pwd -P)"
BUILD_DIR="./build"
ZIP_FILE="${BUILD_DIR}/build.zip"

if [ ! -d "${BUILD_DIR}" ]; then
    mkdir -p "${BUILD_DIR}"
fi

if [ -f "${ZIP_FILE}" ]; then
    rm "${ZIP_FILE}"
fi

# echo -e "${ZIP_FILE}"; exit 0;

# zip -r ./build/build.zip .

zip -r -FS "${ZIP_FILE}" * \
    --exclude '*.git*' \
    --exclude '*build**' \
    --exclude '*.DS_Store*'
