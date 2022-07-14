import 'package:streamss/forms/loginform.dart';
import 'package:streamss/forms/registerform.dart';
import 'package:flutter/material.dart';

class Authentication extends StatelessWidget {
  const Authentication({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Authentication Basics"),
        ),
        body: const LoginForm());
  }
}