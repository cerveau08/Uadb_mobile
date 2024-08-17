import 'package:flutter/material.dart';
import 'package:flutter_cours/page1.dart';
import 'package:flutter_cours/page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _indexSelector = 0;
  String _affichage = '0 Alarm';
  final SnackBar _snack = SnackBar(
    content: const Text('Un snarck Bar'),
    duration: const Duration(seconds: 4),
    backgroundColor: const Color.fromARGB(255, 139, 213, 10),
    action: SnackBarAction(
        label: 'Clic', textColor: Colors.white, onPressed: () {}),
  );
  void changeAffichage(int index) {
    setState(() {
      _indexSelector = index;
      switch (_indexSelector) {
        case 0:
          _affichage = '$_indexSelector Alarm';
          break;
        case 1:
          _affichage = '$_indexSelector Home';
          break;
        case 2:
          _affichage = '$_indexSelector Foward';
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('un AppBar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              _affichage,
              style: const TextStyle(fontSize: 40),
            ),
            Image.asset(
              "images/cachet.png",
              width: 90,
            ),
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(_snack);
              },
              child: const Text('Déclence Snackbar'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (BuildContext context) => Page1()),
                );
              },
              child: const Text('Aller à la page 1'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (BuildContext context) => Page2()),
                );
              },
              child: const Text('Aller à la page 2'),
            )
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.green,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Image.asset(
                'images/cachet.png',
                width: 100,
              ),
            ),
            const ListTile(
                leading: Icon(Icons.alarm), title: Text('Alarm'), onTap: null),
            const ListTile(
                leading: Icon(Icons.home), title: Text('Home'), onTap: null),
            const ListTile(
              leading: Icon(Icons.forward),
              title: Text('Fowards'),
              onTap: null,
              trailing: Icon(Icons.forward),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.alarm, color: Colors.white),
            label: 'Alarm',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.forward, color: Colors.white),
            label: 'Foward',
          )
        ],
        backgroundColor: Colors.green,
        onTap: changeAffichage,
        currentIndex: _indexSelector,
      ),
    );
  }
}
