import 'package:flutter/material.dart';
import 'my_list_title.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List _users = [
      'Marko Markovic',
      'Ana Petrovic',
      'Petar Petrovic',
      'Milica Jovanovic',
      'Nikola Nikolic',
      'Janko Cvetic'
    ];
    final List _numbers = [
      '060111222',
      '065123445',
      '065233444',
      '069111333',
      '0763333444',
      '080333444'
    ];

    return Scaffold(
        body: ListView.builder(
            itemCount: _users.length,
            itemBuilder: (context, index) {
              return MyListTitle(
                  name: _users[index],
                  number: _numbers[index],
                  paddingSize: 10);
            }));
  }
}
