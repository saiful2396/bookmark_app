import 'package:bookmark_app/models/bookmark_model.dart';
import 'package:bookmark_app/widget/view_web_page.dart';
import 'package:flutter/material.dart';


class ViewBookMark extends StatelessWidget {

  Bookmark bookmark;
  ViewBookMark(this.bookmark);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(bookmark.title),
      ),
      body: ViewWebPageWidget(bookmark.url),
    );
  }
}
