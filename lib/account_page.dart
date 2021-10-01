import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.exit_to_app))
        ],
      ),
      body: _buildBody()
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        width: 96.0,
                        height: 96.0,
                        child:
                        CircleAvatar(
                          backgroundImage: NetworkImage('https://source.unsplash.com/user/erondu/1600x900'),
                        ),
                      ),
                      Container(
                        width: 96,
                        height: 96,
                        alignment: Alignment.bottomRight,
                        child: SizedBox(
                          width: 32.0,
                          height: 32.0,
                          child: FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
                        )
                      )
                    ]
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  Text(
                      'Song, JunYoung',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )
                  )
                ],
              ),
              Column(
                children: [
                  Text('4'),
                  Text('게시글'),
                ],
              ),
              Column(
                children: [
                  Text('0'),
                  Text('팔로워'),
                ],
              ),
              Column(
                children: [
                  Text('0'),
                  Text('팔로잉'),
                ],
              ),
            ]
          ),
        ]
      ),
    );
  }
}
