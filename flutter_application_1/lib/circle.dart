import 'package:flutter/material.dart';

class MyCircle extends StatelessWidget {
  const MyCircle({super.key, required this.stories});

  final String stories;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red[100],
            ),
            child: Center(
                child: Text(
              stories,
              style: const TextStyle(fontSize: 10),
            ))));
  }
}
