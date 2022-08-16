import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class BubbleStories extends StatelessWidget {
  const BubbleStories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                child: Center(
                    child: Icon(
                  UniconsLine.user,
                  size: 36,
                )),
                radius: 36,
              )
            ],
          ),
        ],
      ),
    );
  }
}
