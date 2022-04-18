#!/bin/bash

: "${INSTALL_DIR:=/var/www/html}"

npm run build
rm "${INSTALL_DIR}/*" -rf
cp dist/* "${INSTALL_DIR}/" -r
