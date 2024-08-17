import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
        backgroundColor: const Color.fromARGB(255, 243, 33, 194),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey,
        child: ListView(),
      ),
      body: Center(
        child: Text('This is Page 1'),
      ),
    );
  }
}
