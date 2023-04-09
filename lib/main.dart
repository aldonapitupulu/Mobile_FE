import 'package:flutter/material.dart';
import 'package:flutter_application_1/profile/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'aldo_211112451'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfileScreen()));
                },
                child: const Text('Profile')),
            Image.network(
              'https://upload.wikimedia.org/wikipedia/id/8/8b/Real_Madrid_Club_de_F%C3%BAtbol.png',
              width: 200,
            ),
            const Icon(Icons.check_circle_outline_rounded),
            const Text.rich(TextSpan(text: 'Ayok ', children: <TextSpan>[
              TextSpan(
                  text: 'Belajar ',
                  style: TextStyle(fontStyle: FontStyle.italic)),
              TextSpan(
                  text: 'Menghitung',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ])),
            const Text(
              'Total:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.blueGrey,
                letterSpacing: 2,
              ),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Center(
              child: Container(
                height: 100.0,
                width: 100.0,
                color: Colors.yellow,
                child: Align(
                  alignment: FractionalOffset(0.2, 0.6),
                  child: Container(
                    height: 40.0,
                    width: 40.0,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
