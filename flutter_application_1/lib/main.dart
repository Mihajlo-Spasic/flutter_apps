import 'package:flutter/material.dart';
import 'home_page.dart';
import 'my_list_title.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: const [
      MyListTitle(name: "Marko", number: "42424", paddingSize: 10),
      MyListTitle(name: "Marko", number: "42424", paddingSize: 10),
      MyListTitle(name: "Marko", number: "42424", paddingSize: 10),
    ]));
  }
}
