//
//  Generated code. Do not modify.
//  source: basic_cnn_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'basic_cnn_service.pb.dart' as $0;

export 'basic_cnn_service.pb.dart';

@$pb.GrpcServiceName('basic_ai_service.BasicCNNService')
class BasicCNNServiceClient extends $grpc.Client {
  static final _$loadSampleData = $grpc.ClientMethod<$0.SampleData, $0.LoadingSummary>(
      '/basic_ai_service.BasicCNNService/LoadSampleData',
      ($0.SampleData value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LoadingSummary.fromBuffer(value));
  static final _$loadTrainedModel = $grpc.ClientMethod<$0.ModelData, $0.LoadingSummary>(
      '/basic_ai_service.BasicCNNService/LoadTrainedModel',
      ($0.ModelData value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LoadingSummary.fromBuffer(value));
  static final _$loadDefaultModel = $grpc.ClientMethod<$0.LoadingParameters, $0.LoadingSummary>(
      '/basic_ai_service.BasicCNNService/LoadDefaultModel',
      ($0.LoadingParameters value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LoadingSummary.fromBuffer(value));
  static final _$trainModel = $grpc.ClientMethod<$0.TrainingParameters, $0.TrainingSummary>(
      '/basic_ai_service.BasicCNNService/TrainModel',
      ($0.TrainingParameters value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.TrainingSummary.fromBuffer(value));
  static final _$whatImageIsThis = $grpc.ClientMethod<$0.Base64Image, $0.InferingResult>(
      '/basic_ai_service.BasicCNNService/WhatImageIsThis',
      ($0.Base64Image value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.InferingResult.fromBuffer(value));

  BasicCNNServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseStream<$0.LoadingSummary> loadSampleData($0.SampleData request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$loadSampleData, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseStream<$0.LoadingSummary> loadTrainedModel($0.ModelData request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$loadTrainedModel, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseStream<$0.LoadingSummary> loadDefaultModel($0.LoadingParameters request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$loadDefaultModel, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseStream<$0.TrainingSummary> trainModel($0.TrainingParameters request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$trainModel, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseStream<$0.InferingResult> whatImageIsThis($0.Base64Image request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$whatImageIsThis, $async.Stream.fromIterable([request]), options: options);
  }
}

@$pb.GrpcServiceName('basic_ai_service.BasicCNNService')
abstract class BasicCNNServiceBase extends $grpc.Service {
  $core.String get $name => 'basic_ai_service.BasicCNNService';

  BasicCNNServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.SampleData, $0.LoadingSummary>(
        'LoadSampleData',
        loadSampleData_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.SampleData.fromBuffer(value),
        ($0.LoadingSummary value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ModelData, $0.LoadingSummary>(
        'LoadTrainedModel',
        loadTrainedModel_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.ModelData.fromBuffer(value),
        ($0.LoadingSummary value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LoadingParameters, $0.LoadingSummary>(
        'LoadDefaultModel',
        loadDefaultModel_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.LoadingParameters.fromBuffer(value),
        ($0.LoadingSummary value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.TrainingParameters, $0.TrainingSummary>(
        'TrainModel',
        trainModel_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.TrainingParameters.fromBuffer(value),
        ($0.TrainingSummary value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Base64Image, $0.InferingResult>(
        'WhatImageIsThis',
        whatImageIsThis_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Base64Image.fromBuffer(value),
        ($0.InferingResult value) => value.writeToBuffer()));
  }

  $async.Stream<$0.LoadingSummary> loadSampleData_Pre($grpc.ServiceCall call, $async.Future<$0.SampleData> request) async* {
    yield* loadSampleData(call, await request);
  }

  $async.Stream<$0.LoadingSummary> loadTrainedModel_Pre($grpc.ServiceCall call, $async.Future<$0.ModelData> request) async* {
    yield* loadTrainedModel(call, await request);
  }

  $async.Stream<$0.LoadingSummary> loadDefaultModel_Pre($grpc.ServiceCall call, $async.Future<$0.LoadingParameters> request) async* {
    yield* loadDefaultModel(call, await request);
  }

  $async.Stream<$0.TrainingSummary> trainModel_Pre($grpc.ServiceCall call, $async.Future<$0.TrainingParameters> request) async* {
    yield* trainModel(call, await request);
  }

  $async.Stream<$0.InferingResult> whatImageIsThis_Pre($grpc.ServiceCall call, $async.Future<$0.Base64Image> request) async* {
    yield* whatImageIsThis(call, await request);
  }

  $async.Stream<$0.LoadingSummary> loadSampleData($grpc.ServiceCall call, $0.SampleData request);
  $async.Stream<$0.LoadingSummary> loadTrainedModel($grpc.ServiceCall call, $0.ModelData request);
  $async.Stream<$0.LoadingSummary> loadDefaultModel($grpc.ServiceCall call, $0.LoadingParameters request);
  $async.Stream<$0.TrainingSummary> trainModel($grpc.ServiceCall call, $0.TrainingParameters request);
  $async.Stream<$0.InferingResult> whatImageIsThis($grpc.ServiceCall call, $0.Base64Image request);
}
