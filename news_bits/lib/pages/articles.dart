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
    List dataList = ModalRoute.of(context)!.settings.arguments as List;
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: IconButton(
            icon: const Icon(Icons.replay_rounded),
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
                decoration: const BoxDecoration(
                    border: Border(
                        bottom:
                            BorderSide(color: Colors.blueAccent, width: 5))),
                // ignore: prefer_const_constructors
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: const Text(
                    "NewsBits",
                    style: TextStyle(fontSize: 26),
                  ),
                ),
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
                          data: dataList[index]['description'] ??
                              'No description'),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/article',
                                arguments: dataList[index]);
                          },
                          child: Row(
                            children: const [
                              Text('Read More'),
                              Icon(Icons.arrow_forward_ios)
                            ],
                          )),
                    ],
                  ),
                  title: Column(
                    children: [
                      Image.network(dataList[index]['urlToImage'] ??
                          'https://media.istockphoto.com/id/1357365823/vector/default-image-icon-vector-missing-picture-page-for-website-design-or-mobile-app-no-photo.jpg?s=612x612&w=0&k=20&c=PM_optEhHBTZkuJQLlCjLz-v3zzxp-1mpNQZsdjrbns='),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        dataList[index]['title'] ?? "Error loading data",
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'source:${dataList[index]['source']['name']}',
                        style: const TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
        itemCount: dataList.length,
      ),
    );
  }
}
