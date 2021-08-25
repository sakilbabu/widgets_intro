import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String title = "Greetings App";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: MyHomePage(
        title: title,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);
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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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
