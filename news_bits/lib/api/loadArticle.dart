import 'package:flutter/material.dart';

class LoadArticle extends StatefulWidget {
  const LoadArticle({super.key});

  @override
  State<LoadArticle> createState() => _LoadArticleState();
}

class _LoadArticleState extends State<LoadArticle> {
  @override
  Widget build(BuildContext context) {
    String _query = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      body: SafeArea(child: Center(child: Text(_query))),
    );
  }
}
