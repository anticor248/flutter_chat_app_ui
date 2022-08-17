import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  int imageName;
  BubbleStories({required this.imageName});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage:
                    AssetImage('lib/assets/profilepic_${imageName + 1}.png'),
                radius: 36,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
