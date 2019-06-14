import 'package:flutter/material.dart';
import 'package:flutter_app/model/book_model.dart';
import 'package:flutter_app/pages/video_list.dart';
import 'package:flutter_app/services/Http.dart';

class VideoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _VideoPage();
  }
}

class _VideoPage extends State<VideoPage> {
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
    return VideoListPage(bookModel);
  }

}
