import 'package:ai_management_app/authentication/services/firebase_login_service.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isLoggingIn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  setState(() {
                    _isLoggingIn = true;
                  });
                  await FirebaseLoginService().signInWithMagic();
                  setState(() {
                    _isLoggingIn = false;
                  });
                },
                child:
                    Text(_isLoggingIn ? 'Logging in...' : 'Sign in with magic'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
