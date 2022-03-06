import 'package:flutter/material.dart';

import '../components/login/anonymous.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (const Text("Sign in")),
      ),
      body:Column(
          children: const [
            Text("Login Screen"),
            Anonymous(),
        ]
      ),
    );
  }
}
