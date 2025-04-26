import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  final void Function() onStartTest;

  const StartScreen({super.key, required this.onStartTest});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Discover Your Personality Type',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: onStartTest,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            ),
            child: const Text('Start Test', style: TextStyle(fontSize: 18)),
          ),
        ],
      ),
    );
  }
}
