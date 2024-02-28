//
//  Generated code. Do not modify.
//  source: basic_ai_infra.proto
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
    {'1': 'result_code', '3': 1, '4': 1, '5': 14, '6': '.basic_ai_infra.ProgressCode', '10': 'resultCode'},
    {'1': 'result_message', '3': 2, '4': 1, '5': 9, '10': 'resultMessage'},
    {'1': 'elapsed_sec', '3': 3, '4': 1, '5': 2, '10': 'elapsedSec'},
  ],
};

/// Descriptor for `LoadingSummary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loadingSummaryDescriptor = $convert.base64Decode(
    'Cg5Mb2FkaW5nU3VtbWFyeRI9CgtyZXN1bHRfY29kZRgBIAEoDjIcLmJhc2ljX2FpX2luZnJhLl'
    'Byb2dyZXNzQ29kZVIKcmVzdWx0Q29kZRIlCg5yZXN1bHRfbWVzc2FnZRgCIAEoCVINcmVzdWx0'
    'TWVzc2FnZRIfCgtlbGFwc2VkX3NlYxgDIAEoAlIKZWxhcHNlZFNlYw==');

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
    {'1': 'result_code', '3': 1, '4': 1, '5': 14, '6': '.basic_ai_infra.ProgressCode', '10': 'resultCode'},
    {'1': 'result_message', '3': 2, '4': 1, '5': 9, '10': 'resultMessage'},
    {'1': 'elapsed_nsec', '3': 3, '4': 1, '5': 5, '10': 'elapsedNsec'},
  ],
};

/// Descriptor for `TrainingSummary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List trainingSummaryDescriptor = $convert.base64Decode(
    'Cg9UcmFpbmluZ1N1bW1hcnkSPQoLcmVzdWx0X2NvZGUYASABKA4yHC5iYXNpY19haV9pbmZyYS'
    '5Qcm9ncmVzc0NvZGVSCnJlc3VsdENvZGUSJQoOcmVzdWx0X21lc3NhZ2UYAiABKAlSDXJlc3Vs'
    'dE1lc3NhZ2USIQoMZWxhcHNlZF9uc2VjGAMgASgFUgtlbGFwc2VkTnNlYw==');

@$core.Deprecated('Use dataPointDescriptor instead')
const DataPoint$json = {
  '1': 'DataPoint',
  '2': [
    {'1': 'data', '3': 1, '4': 1, '5': 9, '10': 'data'},
    {'1': 'type', '3': 2, '4': 1, '5': 14, '6': '.basic_ai_infra.DataType', '10': 'type'},
  ],
};

/// Descriptor for `DataPoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dataPointDescriptor = $convert.base64Decode(
    'CglEYXRhUG9pbnQSEgoEZGF0YRgBIAEoCVIEZGF0YRIsCgR0eXBlGAIgASgOMhguYmFzaWNfYW'
    'lfaW5mcmEuRGF0YVR5cGVSBHR5cGU=');

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

@$core.Deprecated('Use kerasModelDescriptor instead')
const KerasModel$json = {
  '1': 'KerasModel',
  '2': [
    {'1': 'model_data', '3': 1, '4': 1, '5': 12, '10': 'modelData'},
  ],
};

/// Descriptor for `KerasModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List kerasModelDescriptor = $convert.base64Decode(
    'CgpLZXJhc01vZGVsEh0KCm1vZGVsX2RhdGEYASABKAxSCW1vZGVsRGF0YQ==');

@$core.Deprecated('Use modelInfoDescriptor instead')
const ModelInfo$json = {
  '1': 'ModelInfo',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    {'1': 'version', '3': 4, '4': 1, '5': 9, '10': 'version'},
    {'1': 'createdAt', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    {'1': 'updatedAt', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
  ],
};

/// Descriptor for `ModelInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List modelInfoDescriptor = $convert.base64Decode(
    'CglNb2RlbEluZm8SDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSIAoLZGVzY3'
    'JpcHRpb24YAyABKAlSC2Rlc2NyaXB0aW9uEhgKB3ZlcnNpb24YBCABKAlSB3ZlcnNpb24SOAoJ'
    'Y3JlYXRlZEF0GAUgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJY3JlYXRlZEF0Ej'
    'gKCXVwZGF0ZWRBdBgGIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCXVwZGF0ZWRB'
    'dA==');

@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = {
  '1': 'Empty',
  '2': [
    {'1': 'optional_parameter', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'optionalParameter', '17': true},
  ],
  '8': [
    {'1': '_optional_parameter'},
  ],
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode(
    'CgVFbXB0eRIyChJvcHRpb25hbF9wYXJhbWV0ZXIYASABKAlIAFIRb3B0aW9uYWxQYXJhbWV0ZX'
    'KIAQFCFQoTX29wdGlvbmFsX3BhcmFtZXRlcg==');

