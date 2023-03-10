import 'package:flutter/material.dart';
import 'constant.dart';
import 'login.dart';

void main(){
  runApp(InitialScreen());
}

class InitialScreen extends StatelessWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
      title: appName,
    );
  }
}
