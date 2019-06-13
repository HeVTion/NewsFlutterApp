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

class _homePage extends State<HomePage> with AutomaticKeepAliveClientMixin<HomePage> {
  BookModel bookModel;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getNewsData().then((BookModel model) {
      //Scaffold.of(context).showSnackBar(new SnackBar(content: new Text(model.data.length.toString())));
      //在 setState 之前加一句判断，当前页面是否存在于构件树中，存在赋值，不存在结束操作。
      if (!mounted) {
        return;
      }

      setState(() {
        bookModel = model;
      });
    });
  }

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: <Widget>[prefix0.Banner(), HomeWidget(bookModel)],
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
