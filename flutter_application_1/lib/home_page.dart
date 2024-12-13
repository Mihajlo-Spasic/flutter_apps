import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'usercomment.dart';
import 'userpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _navigationSelectedIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    const Center(
        child: Text(
      "Hello",
      style: TextStyle(
          fontSize: 50,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.bold),
    )),
    const Center(
        child: Text(
      "MESSAGE",
      style: TextStyle(
          fontSize: 50,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.bold),
    )),
    const Center(
        child: Text(
      "SETTINGS",
      style: TextStyle(
          fontSize: 50,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.bold),
    )),
    const Center(
        child: Text(
      "ADD",
      style: TextStyle(
          fontSize: 50,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.bold),
    )),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.red[400],
          title: const Text("DRAWER"),
          centerTitle: true,
        ),
        drawer: Drawer(
            backgroundColor: Colors.red[100],
            child: ListView(
              children: [
                const DrawerHeader(child: Icon(Icons.person, size: 50)),
                ListTile(
                    leading: const Icon(Icons.home),
                    title: const Text("HOME"),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const UserHome(),
                        ),
                      );
                    }),
                ListTile(
                    leading: const Icon(Icons.comment),
                    title: const Text("COMMENT"),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const UserComment(),
                        ),
                      );
                    }),
              ],
            )),
        endDrawer: Drawer(
          backgroundColor: Colors.red[100],
        ));
  }
}
