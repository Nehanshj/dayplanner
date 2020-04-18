import 'package:flutter/material.dart';

class Data {
  List<DropdownMenuItem> days = [
    DropdownMenuItem(child: Text('Monday')),
    DropdownMenuItem(child: Text('Tuesday')),
    DropdownMenuItem(child: Text('Wednesday')),
    DropdownMenuItem(child: Text('Thursday')),
    DropdownMenuItem(child: Text('Friday')),
    DropdownMenuItem(child: Text('Saturday')),
    DropdownMenuItem(child: Text('Sunday'))
  ];

  String mondayText = 'Monday\'s Target here';
  String tuesdayText;
  String wednesdayText;
  String thursdayText;
  String fridayText;
  String saturdayText;
  String sundayText;

  void changeText(String day, String text) {
    if (day == 'Monday') {
      mondayText = text;
    }
  }
}
