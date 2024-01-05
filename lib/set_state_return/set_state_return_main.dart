import 'package:flutter/material.dart';

import 'passing_set_state_return.dart';

class SetStateReturn extends StatefulWidget {
  const SetStateReturn({super.key});

  @override
  State<SetStateReturn> createState() => _SetStateReturnState();
}

class _SetStateReturnState extends State<SetStateReturn> {
  static int counter = 0;
  @override
  Widget build(BuildContext context) {
    print('Rebuild');
    return Scaffold(
      appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.inversePrimary, title: const Text('Passing SetState')),

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
          // Option #1
          // counter = PassingSetStateReturn.incrementCounter(counter);

          // Option #2
          setState(() {
            counter = PassingSetStateReturn.incrementCounter(counter);
          });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
