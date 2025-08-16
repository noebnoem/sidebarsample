import 'package:flutter/material.dart';
import 'package:sidebarsample/app_startup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AppStartup();
  }
}

