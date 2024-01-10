import 'package:flutter/material.dart';

// Method #2
class FloatingActionButtonWidget extends StatelessWidget {
  const FloatingActionButtonWidget({super.key, required this.function});

  final Function function;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        function();
      },
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    );
  }
}
