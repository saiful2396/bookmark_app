import 'package:bookmark_app/models/bookmark_model.dart';
import 'package:bookmark_app/widget/bookmark_list_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<BookMark> bookMarkList = [
    BookMark("Flutter", 'https://flutter.dev'),
    BookMark('Google', 'https://google.com'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My BookMarks'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Icon(
              Icons.grid_on,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: BookmarkListWidget(bookMarkList),
      //floatingActionButton: BottomNavigationBar(),
    );
  }
}

