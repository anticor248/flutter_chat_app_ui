import 'package:flutter/material.dart';

import '../utils/single_chat.dart';

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
            for (int i = 0; i < 10; i++)
              (SingleChat(
                chatTitle: 'Chat Title $i',
                chatSubTitle: 'Chat SubTitle $i',
              )),
          ],
        ),
      ),
    );
  }
}
