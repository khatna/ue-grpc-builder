#!/bin/bash

PROTOS_DIR=.
GEN_DIR=./Generated
CPP_PLUGIN_PATH=./GrpcBin/Mac/grpc_cpp_plugin
PROTOC=./GrpcBin/Mac/protoc

if [ ! -d "$GEN_DIR" ]; then
    mkdir -p $GEN_DIR
fi;

$PROTOC -I $PROTOS_DIR --grpc_out=$GEN_DIR --plugin=protoc-gen-grpc=$CPP_PLUGIN_PATH $PROTOS_DIR/helloworld.proto
$PROTOC -I $PROTOS_DIR --cpp_out=$GEN_DIR $PROTOS_DIR/helloworld.proto