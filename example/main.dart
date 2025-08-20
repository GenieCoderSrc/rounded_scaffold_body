import 'package:flutter/material.dart';
import 'package:rounded_scaffold_body/rounded_scaffold_body.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rounded Scaffold Body Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: const Text('Rounded Body Demo'),
      ),
      body: RoundedScaffoldBody(
        bgColor: Colors.white,
        round: 40,
        shadowColor: Colors.black26,
        shadowSpreadRadius: 5,
        blurRadius: 10,
        offset: const Offset(0, 4),
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Welcome!',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Text(
              'This is a simple example using RoundedScaffoldBody.',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}