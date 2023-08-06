import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter aPP"),
      ),
      body: Center(
          child: Text(
        "count is " + count.toString(),
        style: TextStyle(fontSize: 40),
      )),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            count = count + 1;
            print(count);
            setState(() {});
          },
          child: Icon(Icons.add)),
    );
  }
}
