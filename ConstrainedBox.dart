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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Appbar'),
        ),
        body: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 90,
          ),
          child: Container(
            color: Colors.teal,
            child: Text(
              'Welcome to Flutter Divya!!',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
          ),
        )
     );
  }
}
