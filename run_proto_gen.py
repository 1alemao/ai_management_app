"""Runs protoc with the gRPC plugin to generate messages and gRPC stubs."""

from grpc_tools import protoc



protoc.main(
    (
        "",
        "--proto_path=./protos",
        "--python_out=.",
        "--dart_out=grpc:./ai_management_app/lib/generated/protos",
        "--pyi_out=.",
        "--grpc_python_out=.",
        "./protos/basic_cnn_service.proto",
    )
)