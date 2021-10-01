import 'package:flutter/material.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({Key? key}) : super(key: key);

  @override
  _CreatePageState createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final textEditingControler = TextEditingController();

  @override
  void dispose() {
    textEditingControler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(onPressed: null,
      child: Icon(Icons.add_a_photo)),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {

            },
          )
        ]
    );
  }

  Widget _buildBody() {
    return Column(
      children: <Widget>[
        Text('No Image'),
        TextField(
          controller: textEditingControler,
          decoration: InputDecoration(hintText: '내용을 입력하세요.'),
        )
      ]
    );
  }
}
