import 'package:ai_management_app/grpc_client/ai_service_grpc_client.dart';
import 'package:flutter/material.dart';

class CurrentLoadedModelWidget extends StatelessWidget {
  const CurrentLoadedModelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
      width: 600.0,
      height: 400.0,
      child: Column(
        children: [
          const Text('Current Loaded Model'),
          FutureBuilder(
              future: AiServiceGrpcClient().getCurrentLoadedModel(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text('Summary: ${snapshot.data!.description}');
                } else {
                  return const Text('Loading...');
                }
              }),
        ],
      ),
    );
  }
}
