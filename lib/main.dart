import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late String name;

  @override
  void initState() {
    name = "swarna";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String x = "swarna";
    return Scaffold( appBar: AppBar(

    ),
      body: Column(children: [
        Text("hello $name"),
        TextButton(
            onPressed: () {
              name = "manik";
              print(name);
              setState(() {});
            },
            child: Text("change to manik")),
        Container(
          child: Text("hiiii $x"),
        )
      ]),
    );
  }
}
