import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      //mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Icon(
            Icons.lock,
            size: 80.0,
          ),
        ),
        Text(
          'กรุณาใส่รหัสผ่าน',
          style: TextStyle(fontSize: 20),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 120.0),
          child: Row(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (var i = 1; i <= 3; i++) buildButton(num: i),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (var i = 4; i <= 6; i++) buildButton(num: i),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (var i = 7; i <= 9; i++) buildButton(num: i),
          ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(width: 25),
          buildButton(num: 0),
          Icon(
            Icons.backspace_outlined,
            //size: 80.0,
          ),
        ]),
        SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('ลืมรหัสผ่าน')],
        )
      ],
    ));
  }

  Widget buildButton({int? num}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(
                  color: Colors.deepPurpleAccent.shade200, width: 4),
          ),


          child: OutlinedButton(
              onPressed: () {},
              child: Text(
                '$num',
                style: TextStyle(fontSize: 25),
              ))),
    );
  }
}
