import 'package:bookmark_app/models/bookmark_model.dart';
import 'package:bookmark_app/views/add_bookmark.dart';
import 'package:bookmark_app/views/view_bookmark.dart';
import 'package:flutter/material.dart';

void navigateToViewBookmarkPage(Bookmark bookmark, BuildContext context){
  Navigator.push(context,
      MaterialPageRoute(builder: (_)=>ViewBookMark(bookmark)));
}
Future navigateToAddBookmarkPage(BuildContext context){
  return Navigator.push(context,
      MaterialPageRoute(builder: (_)=>AddBookMark()));
}