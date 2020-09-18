import 'package:bookmark_app/models/bookmark_model.dart';
import 'package:bookmark_app/widget/bookmark_grid_Item_widget.dart';
import 'package:flutter/material.dart';

class BookmarkGridWidget extends StatelessWidget {

  final List<Bookmark> bookMarkList;
  BookmarkGridWidget(this.bookMarkList);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:6.0),
      child: GridView.builder(
        itemCount: bookMarkList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 6,
          childAspectRatio: 2,
        ),
        itemBuilder: (BuildContext context, int index){
          return BookmarkGridItemWidget(bookMarkList[index]);
        },
      ),
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
