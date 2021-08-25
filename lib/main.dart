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

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Column(
          children: [
            Container(
              height: 72,
              width: 72,
              child: Placeholder(),
            ),
            Text(
              "James Anderson",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            Text("yesterday"),
          ],
        ),
        SizedBox(height: 48),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 64),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.chat),
              Icon(Icons.call),
              Icon(Icons.video_call),
              Icon(Icons.message),
            ],
          ),
        ),
        SizedBox(height: 48),
        Column(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Cellular"),
                        Text("0 (89) 345 89 89"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.chat),
                        Icon(Icons.call),
                      ],
                    )
                  ],
                )
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Home"),
                        Text("0 (63) 345 89 89"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.chat),
                        Icon(Icons.call),
                      ],
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
