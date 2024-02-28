import 'package:ai_management_app/generated/protos/basic_ai_infra.pb.dart';
import 'package:ai_management_app/grpc_client/ai_service_grpc_client.dart';

class WhatImageIsThisController {
  static final WhatImageIsThisController _instance =
      WhatImageIsThisController._();

  WhatImageIsThisController._();

  factory WhatImageIsThisController() {
    return _instance;
  }

  Stream<InferingResult> whatImageIsThis(
      {required Base64Image base64Image}) async* {
    yield* AiServiceGrpcClient().whatImageIsThis(base64Image);
  }
}
