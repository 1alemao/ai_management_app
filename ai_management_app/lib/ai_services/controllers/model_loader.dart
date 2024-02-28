import 'package:ai_management_app/authentication/services/firebase_login_service.dart';
import 'package:ai_management_app/generated/protos/basic_ai_infra.pb.dart';
import 'package:ai_management_app/generated/protos/timestamp.pb.dart';
import 'package:ai_management_app/grpc_client/ai_service_grpc_client.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

///
/// This service is responsible for loading (Keras) models from Firebase Storage.
///

const usersPath = 'users';
const modelsPath = 'models';

class ModelLoaderService {
  ModelLoaderService._();

  factory ModelLoaderService() {
    return _instance;
  }

  static final ModelLoaderService _instance = ModelLoaderService._();

  final FirebaseStorage _storage = FirebaseStorage.instance;

  Future<List<ModelInfo>> listSavedModels(
      {required BuildContext context}) async {
    final List<ModelInfo> models = [];
    final currentUser = context.read<FirebaseLoginService>().auth.currentUser;
    final path = '$usersPath/${currentUser?.uid}/$modelsPath';
    final modelsRef = _storage.ref(path);
    final modelRefs = await modelsRef.listAll();
    for (final modelRef in modelRefs.items) {
      final metaData = await modelRef.getMetadata();
      models.add(ModelInfo(
        id: modelRef.fullPath,
        name: modelRef.name,
        description: metaData.customMetadata!['description'],
        version: metaData.customMetadata!['version'],
        createdAt: Timestamp.fromDateTime(metaData.timeCreated!),
        updatedAt: Timestamp.fromDateTime(metaData.updated!),
      ));
    }
    return models;
  }

  Stream<LoadingSummary> loadModel({
    required String fullPath,
  }) async* {
    final modelRef = _storage.ref(fullPath);
    final modelFile = await modelRef.getData();
    if (modelFile != null) {
      yield* AiServiceGrpcClient()
          .loadModel(KerasModel()..modelData = modelFile.buffer.asUint8List());
    } else {
      yield LoadingSummary()..resultMessage = 'Error: Model not found';
    }
  }
}
