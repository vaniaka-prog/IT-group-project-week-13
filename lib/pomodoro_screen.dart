import 'package:flutter/material.dart';
class PomodoroScreen extends StatelessWidget {
  const PomodoroScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const TaskScreen(),
            ),
          );
        },
        child: const Text('Go to Task Screen'),
      ),
    ),
  );
}
}
