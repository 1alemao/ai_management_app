import 'package:ai_management_app/generated/protos/basic_ai_infra.pb.dart';
import 'package:ai_management_app/grpc_client/ai_service_grpc_client.dart';
import 'package:flutter/material.dart';

class ModelTrainingWidget extends StatefulWidget {
  const ModelTrainingWidget({Key? key}) : super(key: key);

  @override
  State<ModelTrainingWidget> createState() => _ModelTrainingWidgetState();
}

class _ModelTrainingWidgetState extends State<ModelTrainingWidget> {
  bool _startTraining = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Model Training'),
        TextButton(
            onPressed: () => setState(() {
                  _startTraining = !_startTraining;
                }),
            child: _startTraining
                ? const Text('Training started')
                : const Text('Start Training')),
        if (_startTraining)
          StreamBuilder<TrainingSummary>(
            stream: AiServiceGrpcClient().trainModel(TrainingParameters()),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return SelectableText(snapshot.data!.resultMessage);
              } else {
                return const Text('Waiting for response...');
              }
            },
          ),
      ],
    );
  }
}
