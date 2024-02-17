/// This file implements the client side of the gRPC service.

import 'package:ai_management_app/generated/protos/basic_cnn_service.pbgrpc.dart';
// import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_web.dart';

class AiServiceGrpcClient {
  static final AiServiceGrpcClient _client =
      AiServiceGrpcClient._internalConstructor();

  AiServiceGrpcClient._internalConstructor();

  factory AiServiceGrpcClient() => _client;

  late GrpcWebClientChannel channel;

  static final GrpcWebClientChannel _channel = GrpcWebClientChannel.xhr(
    Uri.parse('http://127.0.0.1:12345'),
  );

  static final _serviceClient = BasicCNNServiceClient(_channel);

  Future<void> shutdown() async {
    await _channel.shutdown();
  }

  Stream<TrainingSummary> trainModel(TrainingParameters request) async* {
    try {
      final response = await _serviceClient.trainModel(request).first;
      yield response;
    } catch (e) {
      yield TrainingSummary()..resultMessage = 'Error: $e';
    }
  }
}
