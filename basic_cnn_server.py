"""The implementation of a basic gRPC AI server."""

import sys
sys.path.insert(1, './generated/protos/')

from basic_cnn_structure import BasicCNNStructure
from concurrent import futures
from controllers.inferer import InferController
from controllers.model_loader import ModelLoadingController
from controllers.model_trainer import ModelTrainingController
from controllers.sample_loader import SampleLoadingController
from grpc import ServicerContext
from grpc_reflection.v1alpha import reflection
from grpc_tools import protoc
from typing import Generator

import basic_ai_infra_pb2
import basic_cnn_service_pb2
import basic_cnn_service_pb2_grpc
import grpc
import logging
import subprocess
import time

class BasicCNNServicer(basic_cnn_service_pb2_grpc.BasicCNNService):
    """Provides methods that implement functionality of basic CNN server."""
    
    def __init__(self):
        self._basic_cnn_structure = BasicCNNStructure()
        self._sample_loader_controller = SampleLoadingController()
        self._model_training_controller = ModelTrainingController()
        self._model_loading_controller = ModelLoadingController()
        self._infer_controller = InferController()

    def GetCurrentLoadedModel(self,
                        request:basic_ai_infra_pb2.Empty,
                        context: ServicerContext) -> basic_ai_infra_pb2.ModelInfo:
        logging.info("GetCurrentModel request from %s", context.peer())
        logging.info("Request: %s", request)
        stringlist = []
        self._basic_cnn_structure.current_model().summary(print_fn=lambda x: stringlist.append(x))
        short_model_summary = "\n".join(stringlist)
        return basic_ai_infra_pb2.ModelInfo(description=short_model_summary)

    def LoadSampleData(self, 
                       request:basic_ai_infra_pb2.SampleData, 
                       context: ServicerContext):
        start_time = time.time()
        logging.info("Receive LoadSampleData request from %s", context.peer())
        logging.info("Request: %s", request)
        summary = basic_cnn_service_pb2.LoadingSummary(
            result_code=basic_cnn_service_pb2.PROGRESS_UNSPECIFIED,
            result_message="starting...",
            elapsed_sec=int((time.time() - start_time)))
        logging.info(summary)
        yield summary
        summary = basic_cnn_service_pb2.LoadingSummary(
            result_code=basic_cnn_service_pb2.PROGRESS_RUNNING,
            result_message="running...",
            elapsed_sec=int((time.time() - start_time)),)
        self._sample_loader_controller.load_sample_into_structure(self._basic_cnn_structure)
        logging.info(summary)
        yield summary
        summary = basic_cnn_service_pb2.LoadingSummary(
            result_code=basic_cnn_service_pb2.PROGRESS_FINISHED_OK,
            result_message="finished!",
            elapsed_sec=int((time.time() - start_time)),)
        logging.info(summary)
        yield summary

    def LoadDefaultModel(self, 
                       request, 
                       context: ServicerContext):
        start_time = time.time()
        logging.info("Received LoadDefaultModel request from %s", context.peer())
        logging.info("Request: %s", request)
        summary = basic_cnn_service_pb2.LoadingSummary(
            result_code=basic_cnn_service_pb2.PROGRESS_UNSPECIFIED,
            result_message="starting...",
            elapsed_sec=int((time.time() - start_time)))
        logging.info(summary)
        yield summary
        summary = basic_cnn_service_pb2.LoadingSummary(
            result_code=basic_cnn_service_pb2.PROGRESS_RUNNING,
            result_message="running...",
            elapsed_sec=int((time.time() - start_time)),)
        self._model_loading_controller.load_default_model(self._basic_cnn_structure)
        logging.info(summary)
        yield summary
        summary = basic_cnn_service_pb2.LoadingSummary(
            result_code=basic_cnn_service_pb2.PROGRESS_FINISHED_OK,
            result_message="finished!",
            elapsed_sec=int((time.time() - start_time)),)
        logging.info(summary)
        yield summary

    def LoadTrainedModel(self, request:basic_ai_infra_pb2.KerasModel, context):
        init_time = time.time()
        summary = basic_ai_infra_pb2.LoadingSummary(
            result_code=basic_ai_infra_pb2.PROGRESS_UNSPECIFIED,
            result_message="starting...",
            elapsed_sec=int((time.time() - init_time)),)
        yield summary
        time.sleep(1)
        summary = basic_ai_infra_pb2.LoadingSummary(
            result_code=basic_ai_infra_pb2.PROGRESS_RUNNING,
            result_message="running...",
            elapsed_sec=int((time.time() - init_time)),)
        yield summary
        time.sleep(1)
        summary = basic_ai_infra_pb2.LoadingSummary(
            result_code=basic_ai_infra_pb2.PROGRESS_FINISHED_OK,
            result_message="finished!",
            elapsed_sec=int((time.time() - init_time)),)

    def TrainModel(self, 
                   request:basic_ai_infra_pb2.TrainingParameters, 
                   context: ServicerContext):
        start_time = time.time()
        result_message = ("Train request received from: " + str(context.peer()) +
                         "\n Request: " + str(request))
        
        summary = basic_ai_infra_pb2.LoadingSummary(
            result_code=basic_ai_infra_pb2.PROGRESS_UNSPECIFIED,
            result_message=result_message,
            elapsed_sec=int((time.time() - start_time)))
        logging.info(summary)
        yield summary
        summary = basic_ai_infra_pb2.LoadingSummary(
            result_code=basic_ai_infra_pb2.PROGRESS_RUNNING,
            result_message="running...",
            elapsed_sec=int((time.time() - start_time)),)
        yield summary
        try:
            summary = self._model_training_controller.train_model(request, self._basic_cnn_structure)
        except Exception as e:
            summary = basic_ai_infra_pb2.LoadingSummary(
                result_code=basic_ai_infra_pb2.PROGRESS_FINISHED_ERROR,
                result_message=str(e),
                elapsed_sec=int((time.time() - start_time)),)
            logging.info(summary)
            yield summary
        else:
            summary = basic_ai_infra_pb2.LoadingSummary(
                result_code=basic_ai_infra_pb2.PROGRESS_FINISHED_OK,
                result_message="finished!",
                elapsed_sec=int((time.time() - start_time)),)
            logging.info(summary)
            yield summary

    def WhatImageIsThis(self, 
                   request:basic_ai_infra_pb2.Base64Image, 
                   context: ServicerContext) -> Generator[basic_ai_infra_pb2.InferingResult, None, None]:
        logging.info("WhatImageIsThis request from %s", context.peer())
        yield basic_ai_infra_pb2.InferingResult(result="starting...")

        result = self._infer_controller.infer_image(self._basic_cnn_structure, request)
        if result is None:
            yield basic_ai_infra_pb2.InferingResult(result="error while trying to infer image.")
        else:
            yield basic_ai_infra_pb2.InferingResult(result=str(result))

def serve():
    logging.info("Starting server...\n")
    server = grpc.server(futures.ThreadPoolExecutor(max_workers=10))
    basic_cnn_service_pb2_grpc.add_BasicCNNServiceServicer_to_server(
        BasicCNNServicer(), server
    )
    SERVICE_NAMES = (
        basic_cnn_service_pb2.DESCRIPTOR.services_by_name["BasicCNNService"].full_name,
        reflection.SERVICE_NAME,
    )
    reflection.enable_server_reflection(SERVICE_NAMES, server)
    server.add_insecure_port("[::]:55551")
    server.start()
    logging.info("\nNow listening on port 55551")
    server.wait_for_termination()

def generate_protos():
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

if __name__ == "__main__":
    try:
        logging.basicConfig(format='%(message)s', level=logging.INFO)
        logging.info("\n---------------------\n"
                     "Basic CNN gRPC Server\n"
                     "---------------------\n")
        logging.info("Generating protos...\n")
        generate_protos()
        logging.info("Starting Envoy...\n")
        envoy = subprocess.Popen(["envoy", "-c", "envoy.yaml"])
        logging.info("Starting gRPC server...\n")
        serve()
    except KeyboardInterrupt:
        logging.info("\nStopping services...\n")
        envoy.terminate()
        logging.info("\nServer stopped by user...\n")