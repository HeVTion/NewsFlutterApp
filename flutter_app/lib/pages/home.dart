import 'package:flutter/material.dart';
import 'package:flutter_app/model/book_model.dart';
import 'package:flutter_app/utils/banner.dart' as prefix0;

import '../services/Http.dart';
import 'home_list.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _homePage();
  }
}

class _homePage extends State<HomePage> {
  BookModel bookModel;

  @override
  void initState() {
    getNewsData().then((BookModel model) {
      bookModel = model;

      Scaffold.of(context).showSnackBar(new SnackBar(content: new Text(model.data.length.toString())));
    });
  }

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: <Widget>[prefix0.Banner(),

        HomeWidget(bookModel)],

      ),
    );
  }
}
