import 'package:bookmark_app/models/bookmark_model.dart';
import 'package:bookmark_app/utility/navigation_page.dart';
import 'package:bookmark_app/widget/bookmark_grid_widget.dart';
import 'package:bookmark_app/widget/bookmark_list_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool isGridMode = false;
  List<Bookmark> bookmarkList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My BookMarks'),
        centerTitle: true,
        actions: [
          IconButton(
              icon: isGridMode ? Icon(Icons.list)
                  : Icon(Icons.grid_on),
              onPressed: (){
                setState(() {
                  isGridMode = !isGridMode;
                });
              })
        ],
      ),

      body: isGridMode
          ? BookmarkListWidget(bookmarkList)
          : BookmarkGridWidget(bookmarkList),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        icon:Icon(Icons.add),
        label: Text('Add'),
        onPressed: () => onAddButtonPressed(context),
      ),
    );
  }

  void onAddButtonPressed(BuildContext context) async{
    final result =  await navigateToAddBookmarkPage(context);

    if(result != null && result is Bookmark){
      setState(() {
        bookmarkList.add(result);
      });
    }
  }
}

