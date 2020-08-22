import 'package:bookmark_app/models/bookmark_model.dart';
import 'package:flutter/material.dart';

class AddBookMark extends StatefulWidget {
  @override
  _AddBookMarkState createState() => _AddBookMarkState();
}

class _AddBookMarkState extends State<AddBookMark> {
  final _titleTextController = TextEditingController();
  final _urlTextController = TextEditingController();
  final _urlFocusNOde = FocusNode();

  @override
  void dispose() {
    _titleTextController.dispose();
    _urlTextController.dispose();
    _urlFocusNOde.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add a new bookmark'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller: _titleTextController,
              textInputAction: TextInputAction.next,
              onFieldSubmitted: (textInput){
                FocusScope.of(context).requestFocus(_urlFocusNOde);
              },
              autofocus: true,
              decoration: InputDecoration(
                icon: Icon(Icons.title),
                labelText: 'Title',
                hintText: 'Title of the bookmark',
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 16,),
            TextFormField(
              focusNode: _urlFocusNOde,
              controller: _urlTextController,
              decoration: InputDecoration(
                icon: Icon(Icons.link),
                labelText: 'URL',
                hintText: 'WebPage url',
                border: OutlineInputBorder()
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: Builder(
        builder: (BuildContext context){
          return FloatingActionButton(
            child: Icon(Icons.check),
            backgroundColor: Colors.green,
            onPressed: () {
              String title = _titleTextController.text;
              String url = _urlTextController.text;
              Scaffold.of(context).hideCurrentSnackBar();
              if(isInputValid(title, url)){
                /*print('Title ${_titleTextController.text}');
                print('url ${_urlTextController.text}');*/
                Navigator.pop(context, Bookmark(title, url));
              }else{
                showInputError(context, title, url);
              }
            },
          );
        },
      ),
    );
  }

  bool isInputValid(String title, String url) {
    return title.isNotEmpty && url.isNotEmpty;
  }

  void showInputError(BuildContext context, String title, String url) {
    if (title.isEmpty) {
      showSnackBar( context, 'Title can\'t be empty' );
    } else if (url.isEmpty) {
      showSnackBar( context, 'Url can\'t be empty' );
    }
  }
  void showSnackBar(BuildContext context, String message){
    Scaffold.of(context)
        .showSnackBar(SnackBar(content: Text(message),));
  }
}
