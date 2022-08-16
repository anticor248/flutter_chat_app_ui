import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

import '../pages/chat_screen.dart';

class SingleChat extends StatelessWidget {
  late String chatTitle;
  late String chatSubTitle;
  SingleChat({required this.chatTitle, required this.chatSubTitle});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => ChatScreen()));
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0, left: 8, right: 8),
        child: Container(
          height: 80,
          padding: EdgeInsets.symmetric(vertical: 4),
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.deepPurpleAccent.shade200.withOpacity(.2),
                  offset: const Offset(
                    0.0,
                    3.0,
                  ),
                  blurRadius: 6.0,
                  spreadRadius: 0.1,
                ),
              ],
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey.shade100),
          child: ListTile(
            leading: CircleAvatar(
              radius: 32,
              child: Icon(
                UniconsLine.user,
                size: 28,
              ),
            ),
            title: Text(chatTitle),
            subtitle: Text(chatSubTitle),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('10.12'),
                Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple, shape: BoxShape.circle),
                    child: Center(
                        child: Text(
                      '4',
                      style: TextStyle(color: Colors.white),
                    )))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
