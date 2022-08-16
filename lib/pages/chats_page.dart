import 'package:flutter/material.dart';

import '../utils/single_chat.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            SingleChat(),
            SingleChat(),
            SingleChat(),
            SingleChat(),
            SingleChat(),
            SingleChat(),
            SingleChat(),
            SingleChat(),
            SingleChat(),
            SingleChat(),
            SingleChat(),
          ],
        ),
      ),
    );
  }
}
