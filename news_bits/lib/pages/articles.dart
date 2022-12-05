import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class ArticlePage extends StatefulWidget {
  const ArticlePage({super.key});

  @override
  State<ArticlePage> createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  @override
  Widget build(BuildContext context) {
    Set artSet = ModalRoute.of(context)!.settings.arguments as Set;
    List _dataList = artSet.first;
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: IconButton(
            icon: Icon(Icons.replay_rounded),
            onPressed: () {
              Navigator.popAndPushNamed(context, '/');
            },
          )),
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.now_widgets_rounded,
                color: Colors.blueAccent[700],
                size: 30,
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                // ignore: prefer_const_constructors
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    "NewsBits",
                    style: TextStyle(fontSize: 26),
                  ),
                ),
                decoration: const BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(color: Colors.blueAccent, width: 5))),
              )
            ],
          )),
      body: ListView.builder(
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListTile(
                  subtitle: Column(
                    children: [
                      Html(
                          data: _dataList[index]['description'] != null
                              ? _dataList[index]['description']
                              : 'No description'),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/article',
                                arguments: _dataList[index]);
                          },
                          child: Row(
                            children: [
                              Text('Read More'),
                              Icon(Icons.arrow_forward_ios)
                            ],
                          )),
                    ],
                  ),
                  title: Column(
                    children: [
                      Image.network(_dataList[index]['urlToImage'] != null
                          ? _dataList[index]['urlToImage']
                          : 'https://media.istockphoto.com/id/1357365823/vector/default-image-icon-vector-missing-picture-page-for-website-design-or-mobile-app-no-photo.jpg?s=612x612&w=0&k=20&c=PM_optEhHBTZkuJQLlCjLz-v3zzxp-1mpNQZsdjrbns='),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        _dataList[index]['title'] != null
                            ? _dataList[index]['title']
                            : "Error loading data",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'source:' +
                            _dataList[index]['source']['name'].toString(),
                        style: const TextStyle(
                            backgroundColor: Colors.red,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
        itemCount: _dataList.length,
      ),
    );
  }
}
