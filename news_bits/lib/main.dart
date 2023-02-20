import 'package:flutter/material.dart';
import 'package:news_bits/pages/articles.dart';
import 'package:news_bits/pages/home.dart';
import 'package:news_bits/pages/loading.dart';
import 'package:news_bits/pages/read_more.dart';
import 'package:news_bits/pages/search.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => const LoadingPage(),
      '/home': (context) => const HomePage(),
      '/search': (context) => const SearchPage(),
      '/articles': (context) => const ArticlePage(),
      '/article': (context) => const ArticleView()
    },
  ));
}
