import 'package:flutter/material.dart';
import 'package:mini_habits/Widgets/CreateHabitForm.dart';
// resuable dialog box which for now is from a tutorial but I will tinker with it and design it to how I would like it to be. 
// also it would be super cool to be able to create some of these widgets and have them on my gitlab or github so people can use them 

enum DialogAction { yes, abort }
List<List<int>> gridState = [

  [0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0],
  [0,0,0,0,0,0,0],
];

class Dialogs {
  static Future<DialogAction> yesAbortDialog(BuildContext context, String title) async {
    final action = await showDialog(context: context, barrierDismissible: false, builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        title: Text(title),
        content: CreateHabitForm(),
        actions: <Widget>[
          Text("data"),
          FlatButton(
            onPressed: () => Navigator.of(context).pop(DialogAction.abort),
            child: Text('Cancel')
          ),
          RaisedButton(
            color: Color(0xffAFBBFF),
            onPressed: () => Navigator.of(context).pop(DialogAction.yes),
            child: Text('Create', style: TextStyle(color: Colors.black))
          )
        ],
      );
    });

    void populateArray() {
       
    }

    return (action != null ) ? action : DialogAction.abort;
  }
}