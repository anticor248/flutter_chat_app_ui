import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:unicons/unicons.dart';

import '../utils/bubble_stories.dart';
import 'chats_page.dart';
import 'group_chats_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO AppBar Design

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            systemNavigationBarIconBrightness: Brightness.dark),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'ChatApp',
              style: TextStyle(
                color: Colors.deepPurple,
                fontWeight: FontWeight.w900,
              ),
            ),
            Icon(
              UniconsLine.bell,
              color: Colors.deepPurple,
            ),
          ],
        ),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            //TODO BubbleStories
            Container(
              height: 90,
              child: Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    for (int i = 0; i < 9; i++)
                      (BubbleStories(
                        imageName: i,
                      )),
                  ],
                ),
              ),
            ),

            //TODO Search Bar
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                  prefixIcon: Icon(
                    UniconsLine.search,
                    color: Colors.black87,
                  ),
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.black54),
                ),
                cursorColor: Colors.black87,
              ),
            ),

            //TODO TabBar (2 Tabs)

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TabBar(
                labelColor: Colors.deepPurple,
                indicatorColor: Colors.deepPurple,
                tabs: [
                  Tab(
                    text: 'Chats',
                  ),
                  Tab(
                    text: 'Groups',
                  ),
                ],
              ),
            ),
            //TODO TabBarView (2Tabs)

            Expanded(
              child: TabBarView(children: [
                ChatsPage(),
                GroupChatsPage(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
