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

              return ListTile(
                title: GestureDetector(
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        Image.network(
                          bookData.bookCover,
                          width: 120,
                          height: 120,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        width: 1, color: Colors.black))),

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  bookData.bookname,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),

                                Row(
                                  children: <Widget>[
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(bookData.authorName)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          );
  }
}
