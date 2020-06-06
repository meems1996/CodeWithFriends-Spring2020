import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:mini_habits/Widgets/ModalDailyCheckInWidget.dart';

/// Create a form widget
class CreateHabitForm extends StatefulWidget {
  @override
  CreateHabitFormState createState() => CreateHabitFormState();
}

/// Create a corresponding State class, 
/// This class holds the data related to the form 
class CreateHabitFormState extends State<CreateHabitForm> {
  // Create a global key that uniquely identifies the Form widget and allows validation  of the form. 
  final _formKey = GlobalKey<FormState>();
  final myController = TextEditingController();

  void dispose() {
    /// clean up the controller when the widget is disposed. 
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above. 

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            controller: myController,
          ),
          RaisedButton(
            child: Text('press me'),
            onPressed: (){
              print(myController);
            },
          ),
          ModalDailyCheckInWidget(),
        ],
      ),
    );
  }

}
