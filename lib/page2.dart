import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text('This is Page 2.'),
      ),
    );
  }
}
