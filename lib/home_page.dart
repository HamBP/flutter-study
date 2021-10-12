import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final FirebaseUser user;

  HomePage(this.user);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Instagram',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal),
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: <Widget>[
                  Text('Instagram에 오신 것을 환영합니다.',
                    style: TextStyle(fontSize: 24.0),
                  ),
                  Padding(padding: EdgeInsets.all(8.0)),
                  Text('사진과 동영상을 보려면 팔로우하세요.'),
                  Padding(padding: EdgeInsets.all(16.0)),
                  SizedBox(
                      width: 260.0,
                      child: Card(
                          child: Column(
                              children: <Widget>[
                                SizedBox(
                                  width: 80.0,
                                  height: 80.0,
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(user.photoUrl),
                                  )
                                ),
                                Text(user.email),
                                Text(user.displayName),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    SizedBox(
                                        width: 70.0,
                                        height: 70.0,
                                        child: Image.network('https://source.unsplash.com/user/erondu/1600x900', fit: BoxFit.cover)
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(4.0),
                                    ),
                                    SizedBox(
                                        width: 70.0,
                                        height: 70.0,
                                        child: Image.network('https://source.unsplash.com/user/erondu/1600x900', fit: BoxFit.cover)
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(4.0),
                                    ),
                                    SizedBox(
                                        width: 70.0,
                                        height: 70.0,
                                        child: Image.network('https://source.unsplash.com/user/erondu/1600x900', fit: BoxFit.cover)
                                    ),
                                  ],
                                ),
                                Text('Facebook 친구'),
                                RaisedButton(
                                    child: Text('팔로우'),
                                    color: Colors.blueAccent,
                                    onPressed: () {})
                              ]
                          )
                      ))
                ],
              )
            )
          )
      )
    );
  }
}
