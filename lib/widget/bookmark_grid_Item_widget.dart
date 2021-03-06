import 'package:bookmark_app/models/bookmark_model.dart';
import 'package:bookmark_app/utility/navigation_page.dart';
import 'package:flutter/material.dart';

class BookmarkGridItemWidget extends StatelessWidget {
  final Bookmark  bookmark;
  BookmarkGridItemWidget(this.bookmark);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: GestureDetector(
          onTap: () => navigateToViewBookmarkPage(bookmark, context),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(bookmark.title, style: Theme.of(context).textTheme.title,),
              SizedBox(height: 6,),
              Text(bookmark.url, style: Theme.of(context).textTheme.subtitle,),
            ],
          ),
        ),
      ),
    );
  }
}