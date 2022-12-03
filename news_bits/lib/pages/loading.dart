import 'package:flutter/material.dart';
import 'package:news_bits/api/loadArticle.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  String _query = 'top news';
  void setData() async {
    LoadArticle instance = LoadArticle(query: _query);
    instance.getData();
  }

  Map articles = {};
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(child: Text(_query))),
    );
  }
}
