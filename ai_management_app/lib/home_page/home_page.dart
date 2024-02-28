import 'package:ai_management_app/ai_services/pages/what_image_is_this.dart';
import 'package:ai_management_app/authentication/services/firebase_login_service.dart';
import 'package:ai_management_app/home_page/widgets/current_model_widget.dart';
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
        actions: [
          TextButton(
            onPressed: () async => await FirebaseLoginService().signOut(),
            child: const Text('Sign out'),
          ),
        ],
      ),
      body: Wrap(
        children: [
          const CurrentLoadedModelWidget(),
          const ModelTrainingWidget(),
          TextButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const WhatImageIsThisPage(),
              ),
            ),
            child: const Text("What image is this?"),
          ),
        ],
      ),
    );
  }
}
