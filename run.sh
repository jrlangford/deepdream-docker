#!/bin/bash

docker run -d -v $(pwd)/workspace:/root/data --name=deepdream -p 8888:8888 deepdream
