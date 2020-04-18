import 'package:flutter/material.dart';

import 'Data.dart';
import 'edit_bottomsheet.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) =>
                    SingleChildScrollView(
                        child: Container(
                          padding: EdgeInsets.only(
                              bottom: MediaQuery
                                  .of(context)
                                  .viewInsets
                                  .bottom),
                          child: Edit(),
                        )),
                isScrollControlled: true,
              );
            },
          )
        ],
        title: Text(
          'MyPlanner',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white70,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Card(
                color: Colors.red,
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      child: Icon(
                        Icons.looks_one,
                      ),
                    ),
//                  VerticalDivider(
//                    color: Colors.black,
//                    width: 10.0,
//                    thickness: 13.0,
//                  ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      width: 300.0,
                      child: Text(Data().mondayText),
                      ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Card(
                color: Colors.blueAccent,
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      child: Icon(
                        Icons.looks_two,
                      ),
                    ),
//                  VerticalDivider(
//                    color: Colors.black,
//                    width: 10.0,
//                    thickness: 13.0,
//                  ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      width: 300.0,
                      child: TextField(
                        decoration: new InputDecoration(
                          hintText: 'Tuesday Task',
                        ),
                        maxLines: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Card(
                color: Colors.green,
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      child: Icon(
                        Icons.looks_3,
                      ),
                    ),
//                  VerticalDivider(
//                    color: Colors.black,
//                    width: 10.0,
//                    thickness: 13.0,
//                  ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      width: 300.0,
                      child: TextField(
                        decoration: new InputDecoration(
                          hintText: 'Wednesday Task',
                        ),
                        maxLines: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Card(
                color: Colors.orange,
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      child: Icon(Icons.looks_4),
                    ),
//                  VerticalDivider(
//                    color: Colors.black,
//                    width: 10.0,
//                    thickness: 13.0,
//                  ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      width: 300.0,
                      child: TextField(
                        decoration: new InputDecoration(
                          hintText: 'Thursday Task',
                        ),
                        maxLines: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Card(
                color: Colors.pinkAccent,
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      child: Icon(
                        Icons.looks_5,
                      ),
                    ),
//                  VerticalDivider(
//                    color: Colors.black,
//                    width: 10.0,
//                    thickness: 13.0,
//                  ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      width: 300.0,
                      child: TextField(
                        decoration: new InputDecoration(
                          hintText: 'Friday Task',
                        ),
                        maxLines: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Card(
                color: Colors.tealAccent,
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      child: Icon(
                        Icons.looks_6,
                      ),
                    ),
//                  VerticalDivider(
//                    color: Colors.black,
//                    width: 10.0,
//                    thickness: 13.0,
//                  ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      width: 300.0,
                      child: TextField(
                        decoration: new InputDecoration(
                          hintText: 'Saturday Task',
                        ),
                        maxLines: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Card(
                color: Colors.black,
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      child: Icon(
                        Icons.filter_7,
                      ),
                    ),
//                  VerticalDivider(
//                    color: Colors.black,
//                    width: 10.0,
//                    thickness: 13.0,
//                  ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      width: 300.0,
                      child: TextField(
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        cursorColor: Colors.white,
                        decoration: new InputDecoration(
                          hoverColor: Colors.white,
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                          hintText: 'Sunday Task',
                        ),
                        maxLines: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
