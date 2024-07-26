import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemple 1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Exemple 1'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Icon _icon1 = Icon(Icons.favorite_border, color: Colors.white);
  Icon _icon2 = Icon(Icons.favorite_border, color: Colors.yellow);
  bool _aimer = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blue,
        actions: <Widget>[
          IconButton(icon: _icon1, onPressed: cliquer),
          IconButton(icon: _icon2, onPressed: cliquer)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: cliquer,
        child: Icon(Icons.forward),
        backgroundColor: Colors.blue,
        tooltip: 'Next',
        shape: CircleBorder(),
        elevation: 20.0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  void cliquer() {
    setState(() {
      if (_aimer) {
        _aimer = false;
        _icon1 = Icon(Icons.favorite, color: Colors.yellow);
        _icon2 = Icon(Icons.favorite, color: Colors.white);
      } else {
        _aimer = true;
        _icon1 = Icon(Icons.favorite_border, color: Colors.white);
        _icon2 = Icon(Icons.favorite_border, color: Colors.yellow);
      }
    });
  }
}
