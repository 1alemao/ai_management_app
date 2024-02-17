#!/bin/bash

# Used to compile the proto files to dart files

cd ../..

# Path to protos directory
PROTO_DIR="./ai/basic_ai_infra/protos/"

cd $PROTO_DIR

PROTO_FILES=$(find -name "*.proto")

echo "Compiling proto files: $PROTO_FILES"

# Set the output directory for the generated Dart files
OUTPUT_DIR="/lib/generated/protos/"

cd ./ai_management_app

# Compile the proto files to Dart
protoc --proto_path=$PROTO_PATH --dart_out=grpc:$OUTPUT_DIR $PROTO_FILES