import '../global.dart';

class PassingSetState {
  // Option #1
  // static int counter = 0;
  // static incrementCounter(Function setState) {
  //   setState(() {
  //     counter++;
  //   });
  // }

  // Option #2 Using Global Var

  static incrementCounter(Function setState) {
    setState(() {
      counter++;
    });
  }
}
