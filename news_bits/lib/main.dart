import 'package:flutter/material.dart';
import 'package:news_bits/api/loadArticle.dart';
import 'package:news_bits/pages/articles.dart';
import 'package:news_bits/pages/home.dart';
import 'package:news_bits/pages/loading.dart';
import 'package:news_bits/pages/search.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/': (context) => LoadingPage(),
      '/home': (context) => HomePage(),
      '/search': (context) => SearchPage(),
      '/articles': (context) => ArticlePage(),
    },
  ));
}
