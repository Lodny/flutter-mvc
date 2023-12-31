import 'package:flutter/material.dart';
import 'package:mvc/src/pages/mvc.dart';
import 'package:mvc/src/pages/normal.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.title});

  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // int _counter = 0;
  //
  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    print('_MyHomePageState.build');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text('Normal Page'),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const NormalPage())),
            ),
            ElevatedButton(
              child: const Text('MVC Page'),
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const MVCPage())),
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
