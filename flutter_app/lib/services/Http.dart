import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_app/model/book_model.dart';
import '../conf/Config.dart';

Future<BookModel> getNewsData() async {
  String url = "https://www.apiopen.top/novelApi";
  var request = await http.get(url);
  return BookModel.fromJson(jsonDecode(request.body));
}
