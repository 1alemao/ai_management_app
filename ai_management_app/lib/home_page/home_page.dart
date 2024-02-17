import 'package:ai_management_app/home_page/widgets/model_training_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('AI Management App'),
      ),
      body: const Center(
        child: ModelTrainingWidget(),
      ),
    );
  }
}