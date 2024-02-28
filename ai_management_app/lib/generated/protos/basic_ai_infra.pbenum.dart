//
//  Generated code. Do not modify.
//  source: basic_ai_infra.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// The codes that indicated the status of the loading process.
class ProgressCode extends $pb.ProtobufEnum {
  static const ProgressCode PROGRESS_UNSPECIFIED = ProgressCode._(0, _omitEnumNames ? '' : 'PROGRESS_UNSPECIFIED');
  static const ProgressCode PROGRESS_RUNNING = ProgressCode._(1, _omitEnumNames ? '' : 'PROGRESS_RUNNING');
  static const ProgressCode PROGRESS_FINISHED_OK = ProgressCode._(2, _omitEnumNames ? '' : 'PROGRESS_FINISHED_OK');
  static const ProgressCode PROGRESS_FINISHED_ERROR = ProgressCode._(3, _omitEnumNames ? '' : 'PROGRESS_FINISHED_ERROR');

  static const $core.List<ProgressCode> values = <ProgressCode> [
    PROGRESS_UNSPECIFIED,
    PROGRESS_RUNNING,
    PROGRESS_FINISHED_OK,
    PROGRESS_FINISHED_ERROR,
  ];

  static final $core.Map<$core.int, ProgressCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ProgressCode? valueOf($core.int value) => _byValue[value];

  const ProgressCode._($core.int v, $core.String n) : super(v, n);
}

/// The type of the data point.
class DataType extends $pb.ProtobufEnum {
  static const DataType DATA_TYPE_UNSPECIFIED = DataType._(0, _omitEnumNames ? '' : 'DATA_TYPE_UNSPECIFIED');
  static const DataType DATA_TYPE_FLOAT = DataType._(1, _omitEnumNames ? '' : 'DATA_TYPE_FLOAT');
  static const DataType DATA_TYPE_INT = DataType._(2, _omitEnumNames ? '' : 'DATA_TYPE_INT');
  static const DataType DATA_TYPE_STRING = DataType._(3, _omitEnumNames ? '' : 'DATA_TYPE_STRING');
  static const DataType DATA_TYPE_IMAGE = DataType._(4, _omitEnumNames ? '' : 'DATA_TYPE_IMAGE');

  static const $core.List<DataType> values = <DataType> [
    DATA_TYPE_UNSPECIFIED,
    DATA_TYPE_FLOAT,
    DATA_TYPE_INT,
    DATA_TYPE_STRING,
    DATA_TYPE_IMAGE,
  ];

  static final $core.Map<$core.int, DataType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DataType? valueOf($core.int value) => _byValue[value];

  const DataType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
