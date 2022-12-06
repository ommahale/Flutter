import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ArticleView extends StatefulWidget {
  const ArticleView({super.key});

  @override
  State<ArticleView> createState() => _ArticleViewState();
}

class _ArticleViewState extends State<ArticleView> {
  @override
  Widget build(BuildContext context) {
    dynamic _articleData = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8, 10, 8, 0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(children: [
              Text(
                _articleData['title'],
                style: TextStyle(
                    fontSize: 20,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Author: ' + _articleData['author'],
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              SizedBox(
                height: 20,
              ),
              Image.network(_articleData['urlToImage']),
              SizedBox(
                height: 20,
              ),
              Text(_articleData['content']),
              ElevatedButton(
                onPressed: () {
                  launchUrl(Uri.parse(_articleData['url']),
                      mode: LaunchMode.externalApplication);
                },
                child: Text(
                  'Visit source',
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black)),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
