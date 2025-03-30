import 'package:flutter/material.dart';
import 'package:practicle/core/routes.dart';

void main() {  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Desktop App',
      initialRoute: '/',
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
