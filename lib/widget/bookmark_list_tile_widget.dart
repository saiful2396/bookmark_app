import 'package:bookmark_app/models/bookmark_model.dart';
import 'package:flutter/material.dart';

class BookmarkListTileWidget extends StatelessWidget {
  final Bookmark  bookmark;
  BookmarkListTileWidget(this.bookmark);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ()=>print(bookmark.title),
      title: Text(bookmark.title, style: Theme.of(context).textTheme.title,),
      subtitle: Text(bookmark.url, style: Theme.of(context).textTheme.subhead,),
    );
  }
}