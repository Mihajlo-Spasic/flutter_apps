import 'package:flutter/material.dart';

class UserComment extends StatelessWidget {
  const UserComment({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      body: const Center(
        child: Text(
          'C O M M E N T P A G E',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
