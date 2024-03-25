import 'package:flutter/material.dart';
import 'test_listview.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Defining routes
      routes: {
        '/': (context) => const HomeScreen(), 
        '/dynamicListView': (context) => DynamicListView(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/dynamicListView');
          },
          child: const Text('Go to DynamicListView'),
        ),
      ),
    );
  }
}