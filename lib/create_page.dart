import 'package:flutter/material.dart';

import 'dart:io';
import 'package:image_picker/image_picker.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({Key? key}) : super(key: key);

  @override
  _CreatePageState createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final textEditingController = TextEditingController();
  File? _image;
  final picker = ImagePicker();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(onPressed: _getImage,
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
    return SingleChildScrollView(
        child: Column(
            children: <Widget>[
              _image == null ? Text('No Image') : Image.file(_image!),
              TextField(
                controller: textEditingController,
                decoration: InputDecoration(hintText: '내용을 입력하세요.'),
              )
            ]
        )
    );
  }

  void _getImage() async {
    var image = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = File(image!.path);
    });
  }
}
