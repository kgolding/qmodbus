#!/bin/sh

cd /app && \
mkdir build && \
cd build && \
qmake .. && \
make && \
exit