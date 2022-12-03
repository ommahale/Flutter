import 'dart:convert';

import 'package:http/http.dart';
import 'package:intl/intl.dart';

class LoadArticle {
  String apiKey = '2bf2ffecb66b4b6a92d7a1e5e0fce40b';
  late String title;
  late String content;
  late String name;
  String urlToImage =
      'https://media.istockphoto.com/id/1354776450/vector/no-photo-available-vector-icon-default-image-symbol-picture-coming-soon-for-web-site-or.jpg?s=612x612&w=0&k=20&c=sE9bs1rjaBAZ5hO9WZ1JH_ItWjZaMih2zE9ig0GraWY=';
  late String description;
  late String author;
  String? query;
  LoadArticle({this.query});
  Future<void> getData() async {
    try {
      Response articleData = await get(Uri.parse(
          'https://newsapi.org/v2/everything?q=$query&apiKey=2bf2ffecb66b4b6a92d7a1e5e0fce40b'));
      Map res = jsonDecode(articleData.body);
      print(res);
    } catch (e) {
      title = 'Could not fetch data please try again later';
      content = 'Could not fetch data please try again later';
      name = 'Could not fetch data please try again later';
      description = 'Could not fetch data please try again later';
      author = 'Could not fetch data please try again later';
    }
  }
}
