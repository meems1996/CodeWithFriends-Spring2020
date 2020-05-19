import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mini Habits',
      theme: ThemeData(
          primarySwatch: Colors.grey,
          scaffoldBackgroundColor: const Color(0xFFFFFFFF),
          primaryTextTheme:
              TextTheme(title: TextStyle(color: Colors.lightGreen))),
      home: MyHomePage(title: 'Mini Habits'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  var days = Row(
    children: <Widget>[
      Column(
        children: <Widget>[
          Icon(Icons.check_circle, color: Color(0xff94A4FF)),
          Text('M')
        ],
      ),
      Column(
        children: <Widget>[
          Icon(Icons.check_circle, color: Color(0xff94A4FF)),
          Text('T')
        ],
      ),
      Column(
        children: <Widget>[
          Icon(Icons.check_circle, color: Color(0xff94A4FF)),
          Text('W')
        ],
      ),
      Column(
        children: <Widget>[
          Icon(Icons.check_circle, color: Color(0xff94A4FF)),
          Text('T')
        ],
      ),
      Column(
        children: <Widget>[
          Icon(Icons.check_circle, color: Color(0xff94A4FF)),
          Text('F')
        ],
      ),
      Column(
        children: <Widget>[
          Icon(Icons.check_circle_outline, color: Color(0xff94A4FF)),
          Text('S')
        ],
      ),
      Column(
        children: <Widget>[
          Icon(Icons.check_circle_outline, color: Color(0xff94A4FF)),
          Text('S')
        ],
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){},
          child: IconButton(
            icon: Icon(Icons.menu),
            onPressed: (){},
        )),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        actions: <Widget>[

          IconButton(icon: Icon(Icons.face), onPressed: () {}),
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.black))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[days,
                    IconButton(icon: Icon(Icons.calendar_today), onPressed: () {})],
                  )),
            ),
            Expanded(
                flex: 8,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Image.asset('assets/undraw_Taken_if77.png'),
                      height: 400,
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
