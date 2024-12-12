import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'my_list_title.dart';
import "square.dart";
import 'circle.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List _posts = ['post1', 'post2', 'post3', 'post4', 'post5'];
    final List stories = [
      'story1',
      'story2',
      'story3',
      'story4',
      'story5',
    ];
    return Scaffold(
        body: Column(
      children: [
        Expanded(
            child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: stories.length,
          itemBuilder: (context, index) {
            return MyCircle(stories: stories[index]);
          },
        )),
        Expanded(
            flex: 8,
            child: ListView.builder(
                itemCount: _posts.length,
                itemBuilder: (context, index) {
                  return MySquare(
                    post: _posts[index],
                  );
                }))
      ],
    ));
  }
}
