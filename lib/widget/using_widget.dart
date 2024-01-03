import 'package:flutter/material.dart';

class UsingWidget extends StatefulWidget {
  const UsingWidget({super.key});

  @override
  State<UsingWidget> createState() => _UsingWidgetState();
}

class _UsingWidgetState extends State<UsingWidget> {
  int _counter = 0;
  _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$_counter',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ],
    );
  }
}
