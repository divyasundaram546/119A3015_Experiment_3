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
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Appbar'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView(
          padding: const EdgeInsets.all(10),
          reverse: true,
          shrinkWrap: true,
          itemExtent: 100,
          children: const [
            Card(
              child: ListTile(
                title: Text('Item 1'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Item 2'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Item 3'),
              ),
            ),
          ],
        ));
  }
}


