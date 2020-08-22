import 'package:bookmark_app/models/bookmark_model.dart';
import 'package:bookmark_app/widget/bookmark_list_Item_widget.dart';
import 'package:flutter/material.dart';

class BookmarkListWidget extends StatelessWidget {
  List<BookMark> bookMarkList;
  BookmarkListWidget(this.bookMarkList);
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 24),
      children: [
        BookmarkListItemWidget(bookMarkList[0]),
        SizedBox(height: 10,),
        BookmarkListItemWidget(bookMarkList[1]),
      ],
    );
  }
}
