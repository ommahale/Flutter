import 'package:flutter/material.dart';

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
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: IconButton(
            icon: Icon(Icons.keyboard_double_arrow_up_rounded),
            onPressed: () {},
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
              SizedBox(
                width: 10,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    "NewsBits",
                    style: TextStyle(fontSize: 26),
                  ),
                ),
                decoration: BoxDecoration(
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
              child: ListTile(
                subtitle: Text(_dataList[index]['description']),
                title: Column(
                  children: [
                    Image.network(_dataList[index]['urlToImage']),
                    Text(
                      _dataList[index]['title'],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
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
