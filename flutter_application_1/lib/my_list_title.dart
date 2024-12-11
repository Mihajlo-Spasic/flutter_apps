import 'package:flutter/material.dart';

class MyListTitle extends StatelessWidget {
  const MyListTitle({
    super.key,
    required this.name,
    required this.number,
    required this.paddingSize,
  });
  final String name;
  final String number;
  final double paddingSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(paddingSize),
        child: ListTile(
            title: Text(name),
            subtitle: Text(number),
            leading: const Icon(Icons.person),
            trailing: const Icon(Icons.call)));
  }
}
