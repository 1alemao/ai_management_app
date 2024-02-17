//
//  Generated code. Do not modify.
//  source: basic_cnn_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use progressCodeDescriptor instead')
const ProgressCode$json = {
  '1': 'ProgressCode',
  '2': [
    {'1': 'PROGRESS_UNSPECIFIED', '2': 0},
    {'1': 'PROGRESS_RUNNING', '2': 1},
    {'1': 'PROGRESS_FINISHED_OK', '2': 2},
    {'1': 'PROGRESS_FINISHED_ERROR', '2': 3},
  ],
};

/// Descriptor for `ProgressCode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List progressCodeDescriptor = $convert.base64Decode(
    'CgxQcm9ncmVzc0NvZGUSGAoUUFJPR1JFU1NfVU5TUEVDSUZJRUQQABIUChBQUk9HUkVTU19SVU'
    '5OSU5HEAESGAoUUFJPR1JFU1NfRklOSVNIRURfT0sQAhIbChdQUk9HUkVTU19GSU5JU0hFRF9F'
    'UlJPUhAD');

@$core.Deprecated('Use dataTypeDescriptor instead')
const DataType$json = {
  '1': 'DataType',
  '2': [
    {'1': 'DATA_TYPE_UNSPECIFIED', '2': 0},
    {'1': 'DATA_TYPE_FLOAT', '2': 1},
    {'1': 'DATA_TYPE_INT', '2': 2},
    {'1': 'DATA_TYPE_STRING', '2': 3},
    {'1': 'DATA_TYPE_IMAGE', '2': 4},
  ],
};

/// Descriptor for `DataType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List dataTypeDescriptor = $convert.base64Decode(
    'CghEYXRhVHlwZRIZChVEQVRBX1RZUEVfVU5TUEVDSUZJRUQQABITCg9EQVRBX1RZUEVfRkxPQV'
    'QQARIRCg1EQVRBX1RZUEVfSU5UEAISFAoQREFUQV9UWVBFX1NUUklORxADEhMKD0RBVEFfVFlQ'
    'RV9JTUFHRRAE');

@$core.Deprecated('Use sampleDataDescriptor instead')
const SampleData$json = {
  '1': 'SampleData',
  '2': [
    {'1': 'samples', '3': 1, '4': 1, '5': 12, '10': 'samples'},
    {'1': 'labels', '3': 2, '4': 3, '5': 5, '10': 'labels'},
  ],
};

/// Descriptor for `SampleData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sampleDataDescriptor = $convert.base64Decode(
    'CgpTYW1wbGVEYXRhEhgKB3NhbXBsZXMYASABKAxSB3NhbXBsZXMSFgoGbGFiZWxzGAIgAygFUg'
    'ZsYWJlbHM=');

@$core.Deprecated('Use modelDataDescriptor instead')
const ModelData$json = {
  '1': 'ModelData',
  '2': [
    {'1': 'json_model', '3': 1, '4': 1, '5': 12, '10': 'jsonModel'},
  ],
};

/// Descriptor for `ModelData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List modelDataDescriptor = $convert.base64Decode(
    'CglNb2RlbERhdGESHQoKanNvbl9tb2RlbBgBIAEoDFIJanNvbk1vZGVs');

@$core.Deprecated('Use loadingParametersDescriptor instead')
const LoadingParameters$json = {
  '1': 'LoadingParameters',
  '2': [
    {'1': 'optional_parameter', '3': 1, '4': 1, '5': 9, '10': 'optionalParameter'},
  ],
};

/// Descriptor for `LoadingParameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loadingParametersDescriptor = $convert.base64Decode(
    'ChFMb2FkaW5nUGFyYW1ldGVycxItChJvcHRpb25hbF9wYXJhbWV0ZXIYASABKAlSEW9wdGlvbm'
    'FsUGFyYW1ldGVy');

@$core.Deprecated('Use loadingSummaryDescriptor instead')
const LoadingSummary$json = {
  '1': 'LoadingSummary',
  '2': [
    {'1': 'result_code', '3': 1, '4': 1, '5': 14, '6': '.basic_ai_service.ProgressCode', '10': 'resultCode'},
    {'1': 'result_message', '3': 2, '4': 1, '5': 9, '10': 'resultMessage'},
    {'1': 'elapsed_sec', '3': 3, '4': 1, '5': 2, '10': 'elapsedSec'},
  ],
};

/// Descriptor for `LoadingSummary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loadingSummaryDescriptor = $convert.base64Decode(
    'Cg5Mb2FkaW5nU3VtbWFyeRI/CgtyZXN1bHRfY29kZRgBIAEoDjIeLmJhc2ljX2FpX3NlcnZpY2'
    'UuUHJvZ3Jlc3NDb2RlUgpyZXN1bHRDb2RlEiUKDnJlc3VsdF9tZXNzYWdlGAIgASgJUg1yZXN1'
    'bHRNZXNzYWdlEh8KC2VsYXBzZWRfc2VjGAMgASgCUgplbGFwc2VkU2Vj');

@$core.Deprecated('Use trainingParametersDescriptor instead')
const TrainingParameters$json = {
  '1': 'TrainingParameters',
  '2': [
    {'1': 'epochs', '3': 1, '4': 1, '5': 5, '10': 'epochs'},
    {'1': 'batch_size', '3': 2, '4': 1, '5': 5, '10': 'batchSize'},
    {'1': 'learning_rate', '3': 3, '4': 1, '5': 2, '10': 'learningRate'},
  ],
};

/// Descriptor for `TrainingParameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List trainingParametersDescriptor = $convert.base64Decode(
    'ChJUcmFpbmluZ1BhcmFtZXRlcnMSFgoGZXBvY2hzGAEgASgFUgZlcG9jaHMSHQoKYmF0Y2hfc2'
    'l6ZRgCIAEoBVIJYmF0Y2hTaXplEiMKDWxlYXJuaW5nX3JhdGUYAyABKAJSDGxlYXJuaW5nUmF0'
    'ZQ==');

@$core.Deprecated('Use trainingSummaryDescriptor instead')
const TrainingSummary$json = {
  '1': 'TrainingSummary',
  '2': [
    {'1': 'result_code', '3': 1, '4': 1, '5': 14, '6': '.basic_ai_service.ProgressCode', '10': 'resultCode'},
    {'1': 'result_message', '3': 2, '4': 1, '5': 9, '10': 'resultMessage'},
    {'1': 'elapsed_nsec', '3': 3, '4': 1, '5': 5, '10': 'elapsedNsec'},
  ],
};

/// Descriptor for `TrainingSummary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List trainingSummaryDescriptor = $convert.base64Decode(
    'Cg9UcmFpbmluZ1N1bW1hcnkSPwoLcmVzdWx0X2NvZGUYASABKA4yHi5iYXNpY19haV9zZXJ2aW'
    'NlLlByb2dyZXNzQ29kZVIKcmVzdWx0Q29kZRIlCg5yZXN1bHRfbWVzc2FnZRgCIAEoCVINcmVz'
    'dWx0TWVzc2FnZRIhCgxlbGFwc2VkX25zZWMYAyABKAVSC2VsYXBzZWROc2Vj');

@$core.Deprecated('Use dataPointDescriptor instead')
const DataPoint$json = {
  '1': 'DataPoint',
  '2': [
    {'1': 'data', '3': 1, '4': 1, '5': 9, '10': 'data'},
    {'1': 'type', '3': 2, '4': 1, '5': 14, '6': '.basic_ai_service.DataType', '10': 'type'},
  ],
};

/// Descriptor for `DataPoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dataPointDescriptor = $convert.base64Decode(
    'CglEYXRhUG9pbnQSEgoEZGF0YRgBIAEoCVIEZGF0YRIuCgR0eXBlGAIgASgOMhouYmFzaWNfYW'
    'lfc2VydmljZS5EYXRhVHlwZVIEdHlwZQ==');

@$core.Deprecated('Use inferingResultDescriptor instead')
const InferingResult$json = {
  '1': 'InferingResult',
  '2': [
    {'1': 'result', '3': 1, '4': 1, '5': 9, '10': 'result'},
  ],
};

/// Descriptor for `InferingResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inferingResultDescriptor = $convert.base64Decode(
    'Cg5JbmZlcmluZ1Jlc3VsdBIWCgZyZXN1bHQYASABKAlSBnJlc3VsdA==');

@$core.Deprecated('Use base64ImageDescriptor instead')
const Base64Image$json = {
  '1': 'Base64Image',
  '2': [
    {'1': 'data', '3': 1, '4': 1, '5': 12, '10': 'data'},
    {'1': 'width', '3': 2, '4': 1, '5': 5, '10': 'width'},
    {'1': 'height', '3': 3, '4': 1, '5': 5, '10': 'height'},
  ],
};

/// Descriptor for `Base64Image`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List base64ImageDescriptor = $convert.base64Decode(
    'CgtCYXNlNjRJbWFnZRISCgRkYXRhGAEgASgMUgRkYXRhEhQKBXdpZHRoGAIgASgFUgV3aWR0aB'
    'IWCgZoZWlnaHQYAyABKAVSBmhlaWdodA==');

