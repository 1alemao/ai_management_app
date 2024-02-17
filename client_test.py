import grpc
import logging

import basic_ai_service_pb2
import basic_ai_service_pb2_grpc

def load_sample_data(stub: basic_ai_service_pb2_grpc.BasicAIServiceStub):
    responses = stub.LoadSampleData(
        basic_ai_service_pb2.SampleData(
            labels=[1, 2, 3], 
            samples=bytes.fromhex('2Ef0 F1f2  ')
        ),
    )
    for response in responses:
        print(response.result_message)

def run():
    # NOTE(gRPC Python Team): .close() is possible on a channel and should be
    # used in circumstances in which the with statement does not fit the needs
    # of the code.
    with grpc.insecure_channel("localhost:55551") as channel:
        stub = basic_ai_service_pb2_grpc.BasicAIServiceStub(channel)
        print("-------------- LoadSampleData --------------")
        load_sample_data(stub)
        # print("-------------- LoadTrainedModel --------------")
        # guide_list_features(stub)
        # print("-------------- TrainModel --------------")
        # guide_record_route(stub)
        # print("-------------- Infer --------------")
        # guide_route_chat(stub)
        
if __name__ == "__main__":
    logging.basicConfig()
    run()
