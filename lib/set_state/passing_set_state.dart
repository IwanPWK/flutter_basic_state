class PassingSetState {
  static int counter = 0;
  static incrementCounter(Function setState) {
    setState(() {
      counter++;
    });
  }
}
