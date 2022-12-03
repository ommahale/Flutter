import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:news_bits/api/loadArticle.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  String _query = 'top news';
  List<dynamic> _data = [{}];
  void setData() async {
    LoadArticle instance = LoadArticle(query: _query);
    await instance.getData();
    _data = instance.data;
    Navigator.pushReplacementNamed(context, '/articles', arguments: {_data});
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
