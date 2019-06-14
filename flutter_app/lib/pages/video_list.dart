import 'package:flutter/material.dart';
import 'package:flutter_app/model/book_model.dart';
import 'package:flutter_app/services/Http.dart';

class VideoListPage extends StatelessWidget {
  final BookModel bookModel;

  VideoListPage(this.bookModel);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return bookModel == null
        ? Center(
            child: CircularProgressIndicator(),
          )
        : ListView.builder(
            itemCount: bookModel.data.length,
            itemBuilder: (BuildContext context, int i) {
              BookData bookData = bookModel.data[i];

              return Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: <Widget>[
                    Image.network(
                      bookData.bookCover,
                      height: 120,
                      width: 120,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(bottom: 60),
                          child: Text(bookData.bookname),
                        ),
                        Text(bookData.authorName)
                      ],
                    )
                  ],
                ),
              );
            },
          );
  }
}
