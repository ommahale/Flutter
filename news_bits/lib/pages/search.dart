import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late TextEditingController _search;
  @override
  void initState() {
    // TODO: implement initState
    _search = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 300,
          child: Center(
            child: TextField(
              controller: _search,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.arrow_circle_right_outlined,
                    color: Colors.blueAccent,
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/',
                        arguments: _search.text);
                  },
                ),
                hintStyle: TextStyle(fontSize: 18),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                hintText: 'Search for a topic',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
