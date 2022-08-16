import 'package:flutter/material.dart';

import '../utils/bubble_stories.dart';

class GroupChatsPage extends StatefulWidget {
  const GroupChatsPage({Key? key}) : super(key: key);

  @override
  State<GroupChatsPage> createState() => _GroupChatsPageState();
}

class _GroupChatsPageState extends State<GroupChatsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            BubbleStories(),
            BubbleStories(),
            BubbleStories(),
            BubbleStories(),
            BubbleStories(),
            BubbleStories(),
            BubbleStories(),
            BubbleStories(),
            BubbleStories(),
          ],
        ),
      ),
    );
  }
}
