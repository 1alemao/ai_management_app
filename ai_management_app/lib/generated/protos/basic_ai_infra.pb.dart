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

import 'basic_ai_infra.pbenum.dart';
import 'timestamp.pb.dart' as $1;

export 'basic_ai_infra.pbenum.dart';

/// The sample data used for training the model.
class SampleData extends $pb.GeneratedMessage {
  factory SampleData({
    $core.List<$core.int>? samples,
    $core.Iterable<$core.int>? labels,
  }) {
    final $result = create();
    if (samples != null) {
      $result.samples = samples;
    }
    if (labels != null) {
      $result.labels.addAll(labels);
    }
    return $result;
  }
  SampleData._() : super();
  factory SampleData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SampleData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SampleData', package: const $pb.PackageName(_omitMessageNames ? '' : 'basic_ai_infra'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'samples', $pb.PbFieldType.OY)
    ..p<$core.int>(2, _omitFieldNames ? '' : 'labels', $pb.PbFieldType.K3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SampleData clone() => SampleData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SampleData copyWith(void Function(SampleData) updates) => super.copyWith((message) => updates(message as SampleData)) as SampleData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SampleData create() => SampleData._();
  SampleData createEmptyInstance() => create();
  static $pb.PbList<SampleData> createRepeated() => $pb.PbList<SampleData>();
  @$core.pragma('dart2js:noInline')
  static SampleData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SampleData>(create);
  static SampleData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get samples => $_getN(0);
  @$pb.TagNumber(1)
  set samples($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSamples() => $_has(0);
  @$pb.TagNumber(1)
  void clearSamples() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get labels => $_getList(1);
}

class LoadingParameters extends $pb.GeneratedMessage {
  factory LoadingParameters({
    $core.String? optionalParameter,
  }) {
    final $result = create();
    if (optionalParameter != null) {
      $result.optionalParameter = optionalParameter;
    }
    return $result;
  }
  LoadingParameters._() : super();
  factory LoadingParameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoadingParameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LoadingParameters', package: const $pb.PackageName(_omitMessageNames ? '' : 'basic_ai_infra'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'optionalParameter')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoadingParameters clone() => LoadingParameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoadingParameters copyWith(void Function(LoadingParameters) updates) => super.copyWith((message) => updates(message as LoadingParameters)) as LoadingParameters;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LoadingParameters create() => LoadingParameters._();
  LoadingParameters createEmptyInstance() => create();
  static $pb.PbList<LoadingParameters> createRepeated() => $pb.PbList<LoadingParameters>();
  @$core.pragma('dart2js:noInline')
  static LoadingParameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoadingParameters>(create);
  static LoadingParameters? _defaultInstance;

  /// For future use
  @$pb.TagNumber(1)
  $core.String get optionalParameter => $_getSZ(0);
  @$pb.TagNumber(1)
  set optionalParameter($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOptionalParameter() => $_has(0);
  @$pb.TagNumber(1)
  void clearOptionalParameter() => clearField(1);
}

/// The summary containing the result of the loading process
class LoadingSummary extends $pb.GeneratedMessage {
  factory LoadingSummary({
    ProgressCode? resultCode,
    $core.String? resultMessage,
    $core.double? elapsedSec,
  }) {
    final $result = create();
    if (resultCode != null) {
      $result.resultCode = resultCode;
    }
    if (resultMessage != null) {
      $result.resultMessage = resultMessage;
    }
    if (elapsedSec != null) {
      $result.elapsedSec = elapsedSec;
    }
    return $result;
  }
  LoadingSummary._() : super();
  factory LoadingSummary.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoadingSummary.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LoadingSummary', package: const $pb.PackageName(_omitMessageNames ? '' : 'basic_ai_infra'), createEmptyInstance: create)
    ..e<ProgressCode>(1, _omitFieldNames ? '' : 'resultCode', $pb.PbFieldType.OE, defaultOrMaker: ProgressCode.PROGRESS_UNSPECIFIED, valueOf: ProgressCode.valueOf, enumValues: ProgressCode.values)
    ..aOS(2, _omitFieldNames ? '' : 'resultMessage')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'elapsedSec', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LoadingSummary clone() => LoadingSummary()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LoadingSummary copyWith(void Function(LoadingSummary) updates) => super.copyWith((message) => updates(message as LoadingSummary)) as LoadingSummary;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LoadingSummary create() => LoadingSummary._();
  LoadingSummary createEmptyInstance() => create();
  static $pb.PbList<LoadingSummary> createRepeated() => $pb.PbList<LoadingSummary>();
  @$core.pragma('dart2js:noInline')
  static LoadingSummary getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoadingSummary>(create);
  static LoadingSummary? _defaultInstance;

  /// The result of the loading process.
  @$pb.TagNumber(1)
  ProgressCode get resultCode => $_getN(0);
  @$pb.TagNumber(1)
  set resultCode(ProgressCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResultCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearResultCode() => clearField(1);

  /// The message describing the result of the loading process.
  @$pb.TagNumber(2)
  $core.String get resultMessage => $_getSZ(1);
  @$pb.TagNumber(2)
  set resultMessage($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasResultMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearResultMessage() => clearField(2);

  /// The time taken to load the data.
  @$pb.TagNumber(3)
  $core.double get elapsedSec => $_getN(2);
  @$pb.TagNumber(3)
  set elapsedSec($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasElapsedSec() => $_has(2);
  @$pb.TagNumber(3)
  void clearElapsedSec() => clearField(3);
}

class TrainingParameters extends $pb.GeneratedMessage {
  factory TrainingParameters({
    $core.int? epochs,
    $core.int? batchSize,
    $core.double? learningRate,
  }) {
    final $result = create();
    if (epochs != null) {
      $result.epochs = epochs;
    }
    if (batchSize != null) {
      $result.batchSize = batchSize;
    }
    if (learningRate != null) {
      $result.learningRate = learningRate;
    }
    return $result;
  }
  TrainingParameters._() : super();
  factory TrainingParameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TrainingParameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TrainingParameters', package: const $pb.PackageName(_omitMessageNames ? '' : 'basic_ai_infra'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'epochs', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'batchSize', $pb.PbFieldType.O3)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'learningRate', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TrainingParameters clone() => TrainingParameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TrainingParameters copyWith(void Function(TrainingParameters) updates) => super.copyWith((message) => updates(message as TrainingParameters)) as TrainingParameters;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TrainingParameters create() => TrainingParameters._();
  TrainingParameters createEmptyInstance() => create();
  static $pb.PbList<TrainingParameters> createRepeated() => $pb.PbList<TrainingParameters>();
  @$core.pragma('dart2js:noInline')
  static TrainingParameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TrainingParameters>(create);
  static TrainingParameters? _defaultInstance;

  /// The number of epochs to train the model.
  @$pb.TagNumber(1)
  $core.int get epochs => $_getIZ(0);
  @$pb.TagNumber(1)
  set epochs($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEpochs() => $_has(0);
  @$pb.TagNumber(1)
  void clearEpochs() => clearField(1);

  /// The batch size to train the model.
  @$pb.TagNumber(2)
  $core.int get batchSize => $_getIZ(1);
  @$pb.TagNumber(2)
  set batchSize($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBatchSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearBatchSize() => clearField(2);

  /// The learning rate to train the model.
  @$pb.TagNumber(3)
  $core.double get learningRate => $_getN(2);
  @$pb.TagNumber(3)
  set learningRate($core.double v) { $_setFloat(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLearningRate() => $_has(2);
  @$pb.TagNumber(3)
  void clearLearningRate() => clearField(3);
}

/// The summary containing the result of the loading process
class TrainingSummary extends $pb.GeneratedMessage {
  factory TrainingSummary({
    ProgressCode? resultCode,
    $core.String? resultMessage,
    $core.int? elapsedNsec,
  }) {
    final $result = create();
    if (resultCode != null) {
      $result.resultCode = resultCode;
    }
    if (resultMessage != null) {
      $result.resultMessage = resultMessage;
    }
    if (elapsedNsec != null) {
      $result.elapsedNsec = elapsedNsec;
    }
    return $result;
  }
  TrainingSummary._() : super();
  factory TrainingSummary.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TrainingSummary.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TrainingSummary', package: const $pb.PackageName(_omitMessageNames ? '' : 'basic_ai_infra'), createEmptyInstance: create)
    ..e<ProgressCode>(1, _omitFieldNames ? '' : 'resultCode', $pb.PbFieldType.OE, defaultOrMaker: ProgressCode.PROGRESS_UNSPECIFIED, valueOf: ProgressCode.valueOf, enumValues: ProgressCode.values)
    ..aOS(2, _omitFieldNames ? '' : 'resultMessage')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'elapsedNsec', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TrainingSummary clone() => TrainingSummary()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TrainingSummary copyWith(void Function(TrainingSummary) updates) => super.copyWith((message) => updates(message as TrainingSummary)) as TrainingSummary;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TrainingSummary create() => TrainingSummary._();
  TrainingSummary createEmptyInstance() => create();
  static $pb.PbList<TrainingSummary> createRepeated() => $pb.PbList<TrainingSummary>();
  @$core.pragma('dart2js:noInline')
  static TrainingSummary getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TrainingSummary>(create);
  static TrainingSummary? _defaultInstance;

  /// The result of the training process.
  @$pb.TagNumber(1)
  ProgressCode get resultCode => $_getN(0);
  @$pb.TagNumber(1)
  set resultCode(ProgressCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResultCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearResultCode() => clearField(1);

  /// The message describing the result of the training process.
  @$pb.TagNumber(2)
  $core.String get resultMessage => $_getSZ(1);
  @$pb.TagNumber(2)
  set resultMessage($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasResultMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearResultMessage() => clearField(2);

  /// The time taken to train the model.
  @$pb.TagNumber(3)
  $core.int get elapsedNsec => $_getIZ(2);
  @$pb.TagNumber(3)
  set elapsedNsec($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasElapsedNsec() => $_has(2);
  @$pb.TagNumber(3)
  void clearElapsedNsec() => clearField(3);
}

/// The data point used for infering a result.
class DataPoint extends $pb.GeneratedMessage {
  factory DataPoint({
    $core.String? data,
    DataType? type,
  }) {
    final $result = create();
    if (data != null) {
      $result.data = data;
    }
    if (type != null) {
      $result.type = type;
    }
    return $result;
  }
  DataPoint._() : super();
  factory DataPoint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DataPoint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DataPoint', package: const $pb.PackageName(_omitMessageNames ? '' : 'basic_ai_infra'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'data')
    ..e<DataType>(2, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: DataType.DATA_TYPE_UNSPECIFIED, valueOf: DataType.valueOf, enumValues: DataType.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DataPoint clone() => DataPoint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DataPoint copyWith(void Function(DataPoint) updates) => super.copyWith((message) => updates(message as DataPoint)) as DataPoint;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DataPoint create() => DataPoint._();
  DataPoint createEmptyInstance() => create();
  static $pb.PbList<DataPoint> createRepeated() => $pb.PbList<DataPoint>();
  @$core.pragma('dart2js:noInline')
  static DataPoint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DataPoint>(create);
  static DataPoint? _defaultInstance;

  /// The result of the training process.
  @$pb.TagNumber(1)
  $core.String get data => $_getSZ(0);
  @$pb.TagNumber(1)
  set data($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);

  /// The type of the data point.
  @$pb.TagNumber(2)
  DataType get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(DataType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);
}

/// The result of the infering process.
class InferingResult extends $pb.GeneratedMessage {
  factory InferingResult({
    $core.String? result,
  }) {
    final $result = create();
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  InferingResult._() : super();
  factory InferingResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InferingResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InferingResult', package: const $pb.PackageName(_omitMessageNames ? '' : 'basic_ai_infra'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'result')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InferingResult clone() => InferingResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InferingResult copyWith(void Function(InferingResult) updates) => super.copyWith((message) => updates(message as InferingResult)) as InferingResult;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InferingResult create() => InferingResult._();
  InferingResult createEmptyInstance() => create();
  static $pb.PbList<InferingResult> createRepeated() => $pb.PbList<InferingResult>();
  @$core.pragma('dart2js:noInline')
  static InferingResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InferingResult>(create);
  static InferingResult? _defaultInstance;

  /// The result of the training process.
  @$pb.TagNumber(1)
  $core.String get result => $_getSZ(0);
  @$pb.TagNumber(1)
  set result($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearResult() => clearField(1);
}

class Base64Image extends $pb.GeneratedMessage {
  factory Base64Image({
    $core.List<$core.int>? data,
    $core.int? width,
    $core.int? height,
  }) {
    final $result = create();
    if (data != null) {
      $result.data = data;
    }
    if (width != null) {
      $result.width = width;
    }
    if (height != null) {
      $result.height = height;
    }
    return $result;
  }
  Base64Image._() : super();
  factory Base64Image.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Base64Image.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Base64Image', package: const $pb.PackageName(_omitMessageNames ? '' : 'basic_ai_infra'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'data', $pb.PbFieldType.OY)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'width', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'height', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Base64Image clone() => Base64Image()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Base64Image copyWith(void Function(Base64Image) updates) => super.copyWith((message) => updates(message as Base64Image)) as Base64Image;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Base64Image create() => Base64Image._();
  Base64Image createEmptyInstance() => create();
  static $pb.PbList<Base64Image> createRepeated() => $pb.PbList<Base64Image>();
  @$core.pragma('dart2js:noInline')
  static Base64Image getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Base64Image>(create);
  static Base64Image? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get data => $_getN(0);
  @$pb.TagNumber(1)
  set data($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get width => $_getIZ(1);
  @$pb.TagNumber(2)
  set width($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasWidth() => $_has(1);
  @$pb.TagNumber(2)
  void clearWidth() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get height => $_getIZ(2);
  @$pb.TagNumber(3)
  set height($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHeight() => $_has(2);
  @$pb.TagNumber(3)
  void clearHeight() => clearField(3);
}

/// The sample data used for training the model.
class KerasModel extends $pb.GeneratedMessage {
  factory KerasModel({
    $core.List<$core.int>? modelData,
  }) {
    final $result = create();
    if (modelData != null) {
      $result.modelData = modelData;
    }
    return $result;
  }
  KerasModel._() : super();
  factory KerasModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KerasModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'KerasModel', package: const $pb.PackageName(_omitMessageNames ? '' : 'basic_ai_infra'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'modelData', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KerasModel clone() => KerasModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KerasModel copyWith(void Function(KerasModel) updates) => super.copyWith((message) => updates(message as KerasModel)) as KerasModel;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KerasModel create() => KerasModel._();
  KerasModel createEmptyInstance() => create();
  static $pb.PbList<KerasModel> createRepeated() => $pb.PbList<KerasModel>();
  @$core.pragma('dart2js:noInline')
  static KerasModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KerasModel>(create);
  static KerasModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get modelData => $_getN(0);
  @$pb.TagNumber(1)
  set modelData($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasModelData() => $_has(0);
  @$pb.TagNumber(1)
  void clearModelData() => clearField(1);
}

class ModelInfo extends $pb.GeneratedMessage {
  factory ModelInfo({
    $core.String? id,
    $core.String? name,
    $core.String? description,
    $core.String? version,
    $1.Timestamp? createdAt,
    $1.Timestamp? updatedAt,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (description != null) {
      $result.description = description;
    }
    if (version != null) {
      $result.version = version;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    return $result;
  }
  ModelInfo._() : super();
  factory ModelInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ModelInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ModelInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'basic_ai_infra'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..aOS(4, _omitFieldNames ? '' : 'version')
    ..aOM<$1.Timestamp>(5, _omitFieldNames ? '' : 'createdAt', protoName: 'createdAt', subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(6, _omitFieldNames ? '' : 'updatedAt', protoName: 'updatedAt', subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ModelInfo clone() => ModelInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ModelInfo copyWith(void Function(ModelInfo) updates) => super.copyWith((message) => updates(message as ModelInfo)) as ModelInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ModelInfo create() => ModelInfo._();
  ModelInfo createEmptyInstance() => create();
  static $pb.PbList<ModelInfo> createRepeated() => $pb.PbList<ModelInfo>();
  @$core.pragma('dart2js:noInline')
  static ModelInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ModelInfo>(create);
  static ModelInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get version => $_getSZ(3);
  @$pb.TagNumber(4)
  set version($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasVersion() => $_has(3);
  @$pb.TagNumber(4)
  void clearVersion() => clearField(4);

  @$pb.TagNumber(5)
  $1.Timestamp get createdAt => $_getN(4);
  @$pb.TagNumber(5)
  set createdAt($1.Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasCreatedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreatedAt() => clearField(5);
  @$pb.TagNumber(5)
  $1.Timestamp ensureCreatedAt() => $_ensure(4);

  @$pb.TagNumber(6)
  $1.Timestamp get updatedAt => $_getN(5);
  @$pb.TagNumber(6)
  set updatedAt($1.Timestamp v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasUpdatedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearUpdatedAt() => clearField(6);
  @$pb.TagNumber(6)
  $1.Timestamp ensureUpdatedAt() => $_ensure(5);
}

class Empty extends $pb.GeneratedMessage {
  factory Empty({
    $core.String? optionalParameter,
  }) {
    final $result = create();
    if (optionalParameter != null) {
      $result.optionalParameter = optionalParameter;
    }
    return $result;
  }
  Empty._() : super();
  factory Empty.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Empty.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Empty', package: const $pb.PackageName(_omitMessageNames ? '' : 'basic_ai_infra'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'optionalParameter')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Empty clone() => Empty()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Empty copyWith(void Function(Empty) updates) => super.copyWith((message) => updates(message as Empty)) as Empty;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Empty create() => Empty._();
  Empty createEmptyInstance() => create();
  static $pb.PbList<Empty> createRepeated() => $pb.PbList<Empty>();
  @$core.pragma('dart2js:noInline')
  static Empty getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Empty>(create);
  static Empty? _defaultInstance;

  /// For future use
  @$pb.TagNumber(1)
  $core.String get optionalParameter => $_getSZ(0);
  @$pb.TagNumber(1)
  set optionalParameter($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOptionalParameter() => $_has(0);
  @$pb.TagNumber(1)
  void clearOptionalParameter() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
