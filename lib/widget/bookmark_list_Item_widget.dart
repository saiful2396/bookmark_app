import 'package:bookmark_app/models/bookmark_model.dart';
import 'package:flutter/material.dart';

class BookmarkListItemWidget extends StatelessWidget {
  BookMark  bookmark;
  BookmarkListItemWidget(this.bookmark);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(bookmark.title, style: Theme.of(context).textTheme.title,),
          SizedBox(height: 6,),
          Text(bookmark.url, style: Theme.of(context).textTheme.subtitle,),
        ],
      ),
    );
  }
}