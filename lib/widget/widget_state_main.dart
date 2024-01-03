import 'package:flutter/material.dart';

import 'using_widget.dart';

class WidgetState extends StatelessWidget {
  const WidgetState({super.key});

  @override
  Widget build(BuildContext context) {
    print('Rebuild');
    return Scaffold(
      appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.inversePrimary, title: const Text('Using Widget for State')),
      body: const Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            UsingWidget(),
          ],
        ),
      ),
    );
  }
}

// class NewWidget extends StatefulWidget {
//   const NewWidget({
//     super.key,
//   });

//   @override
//   State<NewWidget> createState() => _NewWidgetState();
// }

// class _NewWidgetState extends State<NewWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         const Text(
//           'You have pushed the button this many times:',
//         ),
//       ],
//     );
//   }