import 'package:bookmark_app/models/bookmark_model.dart';
import 'package:bookmark_app/widget/bookmark_list_Item_widget.dart';
import 'package:bookmark_app/widget/bookmark_list_tile_widget.dart';
import 'package:flutter/material.dart';

class BookmarkListWidget extends StatelessWidget {

  final List<Bookmark> bookMarkList;
  BookmarkListWidget(this.bookMarkList);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: bookMarkList.length,
      itemBuilder: (BuildContext context, int index){
        return BookmarkListItemWidget(bookMarkList[index]);
      },
    );
  }
  /*List<BookmarkListItemWidget> getBookmarkWidgetList(){
    List<BookmarkListItemWidget> list = [];
    for(Bookmark bookmark in bookMarkList){
      list.add(BookmarkListItemWidget(bookmark));
    }
      return list;
  }*/
}
