"""Runs protoc with the gRPC plugin to generate messages and gRPC stubs."""

import os
from grpc_tools import protoc

timestamp_url = "https://raw.githubusercontent.com/protocolbuffers/protobuf/main/src/google/protobuf/timestamp.proto"

os.system(f"wget {timestamp_url} -O ./protos/timestamp.proto")

protoc.main(
    (
        "",
        "--proto_path=./protos",
        "--python_out=./generated/protos",
        "--pyi_out=./generated/protos",
        "--grpc_python_out=./generated/protos",
        "--dart_out=grpc:./ai_management_app/lib/generated/protos",
        "./protos/basic_ai_infra.proto",
        "./protos/basic_cnn_service.proto",
        "./protos/timestamp.proto"
    )
)