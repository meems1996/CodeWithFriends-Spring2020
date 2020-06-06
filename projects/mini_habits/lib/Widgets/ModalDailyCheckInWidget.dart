
import 'package:flutter/widgets.dart';

class ModalDailyCheckInWidget extends StatefulWidget {
  @override
  _ModalDailyCheckInState createState() => _ModalDailyCheckInState();  
}
class _ModalDailyCheckInState extends State<ModalDailyCheckInWidget>{

/// this is created based on how long you want the habit to last for. If it is just a week you can do a week. 
/// You can then click on individual squares and information pops up or something. 
  var colors = {
    "done": Color(0xffAFBBFF),
    "not-done": Color(0xFFFFFFFF)
  };

  Map<int,Color> exampleList = {
    1: Color(0xFFFFFFFF),
    2: Color(0xFFFFFFFF),
    3: Color(0xffAFBBFF),
    4: Color(0xFFFFFFFF),
    5: Color(0xFFFFFFFF),
  };

/// Add each container cube to the a list and return the list. 
/// There you can set colors of them depending on some logc 
  List<Container> _printContainers(var list) {
    List _containers = new List<Container>();

    for (int i = 1; i <= list.length; i++) {
      _containers.add(
        Container(
          height: 20.0, 
          width: 20.0,
          decoration: BoxDecoration(
            color: exampleList[i],
            border:Border.all(
              width: 1,
            )
          ),
        )
      );
    }
    return _containers;
  }

/// Parse over the data object. 
/// If index is 1 or 2, color it purple, 
/// else white
   Color colorContainer(Map<int,Color> data) {
    Color color;
    // iterate over data 
    // if its 1 then set color to colorList["done"]
    
    return color;
  }

  @override
  Widget build(BuildContext context) {
  print(_printContainers(exampleList));
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: 
              _printContainers(exampleList)
          ),
        ],
      ),
    );
  }
}