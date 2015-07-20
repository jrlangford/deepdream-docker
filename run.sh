#!/bin/bash

BASE_MODEL=$(pwd)/workspace/models/bvlc_googlenet/bvlc_googlenet.caffemodel
if [ ! -f $BASE_MODEL ] 
then
	echo "Downloading base DNN model"
	wget -O $BASE_MODEL http://dl.caffe.berkeleyvision.org/bvlc_googlenet.caffemodel
fi

docker run -d -v $(pwd)/workspace:/root/data --name=deepdream -p 8888:8888 jrlangford/deepdream
