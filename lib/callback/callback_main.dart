import 'package:flutter/material.dart';

import 'class_callback.dart';

class CallbackMain extends StatefulWidget {
  const CallbackMain({super.key});

  @override
  State<CallbackMain> createState() => _CallbackMainState();
}

class _CallbackMainState extends State<CallbackMain> {
  int counter = 0;

  usingCallback() {
    setState(() {
      counter++;
      print('Tes COunter $counter');
    });
  }

  @override
  Widget build(BuildContext context) {
    UsingCallback.callbackCounter = usingCallback;
    return Scaffold(
      appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.inversePrimary, title: const Text('Using Callback')),

      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          UsingCallback.incrementCounter();
          print('Counter $counter');
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
