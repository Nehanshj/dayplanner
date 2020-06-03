import 'package:flutter/material.dart';

import 'Data.dart';

class Edit extends StatefulWidget {
  @override
  _EditState createState() => _EditState();
}

class _EditState extends State<Edit> {
  String selected;
  String newText;

  Data data = new Data();

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xff757575),
        child: Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                "Add Task",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.lightBlueAccent,
                ),
              ),
              DropdownButton(
                  items: data.days,
                  value: selected,
                  onChanged: (value) {
                    selected = value;
                  }),
              TextField(
                autofocus: false,
                textAlign: TextAlign.center,
                onChanged: (Text) {
                  newText = Text;
                },
              ),
              FlatButton(
                child: Text(
                  "CHANGE/ADD",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.lightBlueAccent,
                onPressed: () {
                  setState(() {
                    data.changeText(selected, newText);
                  });
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ));
  }
}
