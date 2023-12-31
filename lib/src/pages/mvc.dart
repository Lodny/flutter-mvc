import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:mvc/src/controller/mvc_controller.dart';

class MVCPage extends StatefulWidget {
  const MVCPage({super.key});

  @override
  State createState() => _MVCPageState();
}

class _MVCPageState extends StateMVC<MVCPage> {
  late MVCController _controller;

  _MVCPageState() : super(MVCController()) {
    _controller = controller as MVCController;
  }

  @override
  Widget build(BuildContext context) {
    print('_MVCPageState.build');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('MVC Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              _controller.count.toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _controller.inc(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
