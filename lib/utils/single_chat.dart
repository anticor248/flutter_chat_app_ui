import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class SingleChat extends StatelessWidget {
  const SingleChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 8, right: 8),
      child: Container(
        height: 80,
        padding: EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.grey.shade300),
        child: ListTile(
          leading: CircleAvatar(
            radius: 32,
            child: Icon(
              UniconsLine.user,
              size: 28,
            ),
          ),
          title: Text('Title'),
          subtitle: Text('SubtitleSubtile'),
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
    );
  }
}
