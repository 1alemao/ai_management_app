import 'package:ai_management_app/home_page/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AiManagementApp());
}

class AiManagementApp extends StatelessWidget {
  const AiManagementApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AI Management App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
