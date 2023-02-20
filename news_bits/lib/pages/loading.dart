import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:news_bits/api/load_article.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  final String _query = 'top%20news';
  List<dynamic> _data = [{}];
  void setData() async {
    LoadArticle instance = LoadArticle(query: _query);
    await instance.getData();
    _data = instance.data;
    // ignore: use_build_context_synchronously
    Navigator.pushReplacementNamed(context, '/home', arguments: _data);
  }

  Map articles = {};
  @override
  void initState() {
    super.initState();
    setData();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SpinKitFadingCircle(
          color: Colors.cyan,
          size: 50,
        ),
      ),
    );
  }
}
