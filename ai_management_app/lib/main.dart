import 'dart:developer';

import 'package:ai_management_app/authentication/services/firebase_login_service.dart';
import 'package:ai_management_app/routes/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

late final FirebaseApp app;
late final FirebaseAuth auth;

// Requires that the Firebase Auth emulator is running locally
// e.g via `melos run firebase:emulator`.
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Firebase initialization
  await Firebase.initializeApp(
    options: firebaseOptions,
  );

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => FirebaseLoginService()),
      ],
      child: const AiManagementApp(),
    ),
  );
}

class AiManagementApp extends StatelessWidget {
  const AiManagementApp({super.key});

  @override
  Widget build(BuildContext context) {
    final currentUser = context.watch<FirebaseLoginService>().auth.currentUser;
    log('Current user: ${currentUser?.email}');
    return MaterialApp.router(
      title: 'AI Management App',
      routerConfig: AppRoutes.router(isAuthenticated: currentUser != null),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
