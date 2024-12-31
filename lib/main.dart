import 'package:flutter/material.dart';
import 'package:flutter_chat_application/pages/auth/login_or_Register.dart';
import 'package:flutter_chat_application/pages/auth/login_page.dart';
import 'package:flutter_chat_application/pages/auth/register_page.dart';
import 'package:flutter_chat_application/pages/home/home_page.dart';
import 'package:flutter_chat_application/themes/light_mode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightMode,
      home: LoginOrRegister(),
    );
  }
}


