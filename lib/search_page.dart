import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_study/create_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) =>
              CreatePage()
            ));
          },
          child: Icon(Icons.create)
      )
    );
  }

  Widget _buildBody() {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.0,
          mainAxisSpacing: 1.0,
          crossAxisSpacing: 1.0),
        itemCount: 5,
        itemBuilder: (context, index) {
          return _buildListItem(context, index);
        });
  }

  Widget _buildListItem(BuildContext context, index) {
    return Image.network(
        'https://source.unsplash.com/user/erondu/1600x900',
        fit: BoxFit.cover);
  }
}
