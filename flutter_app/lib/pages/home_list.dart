import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/model/book_model.dart';

class HomeWidget extends StatelessWidget {
  BookModel bookModel;

  HomeWidget(this.bookModel);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    // TODO: implement build
    return Container(
      width: width,
      color: Colors.white,
      padding: EdgeInsets.all(10.0),
      child: _bulid(context, width),
    );
  }

  _bulid(BuildContext context, double width) {
    double itemWidth = width * 160.5 / 360;
    double imageWidth = width * 110.0 / 360;

    if (bookModel == null) return Text("");

    List<Widget> listWidget = bookModel.data.map((i) {
      return Container(
        width: itemWidth,
        margin: EdgeInsets.all(5.0),
//        padding: EdgeInsets.only(top: 10, left: 13, bottom: 7),
//        color:Colors.grey,

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[Text(i.bookname), Image.network(i.bookCover)],
        ),
      );
    }).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(3.0),
          child: Text("最新产品",
              style: TextStyle(fontSize: 16.0, color: Colors.black)),
        ),
        Wrap(
          spacing: 0,
          children: listWidget,
        ),
      ],
    );
  }
}
