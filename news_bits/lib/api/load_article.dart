import 'dart:convert';

import 'package:http/http.dart';

class LoadArticle {
  final String apiKey = '2bf2ffecb66b4b6a92d7a1e5e0fce40b';
  late List<dynamic> data;
  String? query;
  DateTime date = DateTime.now();

  LoadArticle({this.query});
  Future<void> getData() async {
    String strDate = date.toString();
    strDate = strDate.substring(0, 9);
    try {
      Response articleData = await get(Uri.parse(
          'https://newsapi.org/v2/everything?q=$query=$strDate&sortBy=popularity&apiKey=$apiKey'));
      Map res = jsonDecode(articleData.body);
      data = res['articles'];
    } catch (e) {
      data = [
        {
          'source': {'name': 'Connection error'},
          'article': 'No article fetched',
          'title': 'Please check connection',
          'urlToImage':
              'https://media.istockphoto.com/id/1357365823/vector/default-image-icon-vector-missing-picture-page-for-website-design-or-mobile-app-no-photo.jpg?s=612x612&w=0&k=20&c=PM_optEhHBTZkuJQLlCjLz-v3zzxp-1mpNQZsdjrbns='
        }
      ];
    }
  }
}
