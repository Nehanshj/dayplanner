import 'package:flutter/material.dart';


class Data extends ChangeNotifier {
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
  String tuesdayText = 'Tuesday\'s Target here';
  String wednesdayText = 'Wednesday\'s Target here';
  String thursdayText = 'Thursday\'s Target here';
  String fridayText = 'Friday\'s Target here';
  String saturdayText = 'Saturday\'s Target here';
  String sundayText = 'Sunday\'s Target here';

  void changeText(String day, String text) {
    if (day == 'Monday') {
      mondayText = text;
    }
    notifyListeners();
  }

  String getTask(int day) {
    switch (day) {
      case 1:
        return mondayText;
        break;

      case 2:
        return tuesdayText;
        break;

      case 3:
        return wednesdayText;
        break;
    }
  }
}
