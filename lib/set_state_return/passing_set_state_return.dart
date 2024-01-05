class PassingSetStateReturn {
  // Option #1

  // static incrementCounter(Function setState, int counter) {
  //   setState(() {
  //     counter++;
  //   });
  //   return counter;
  // }

  // Option #2

  static incrementCounter(int counter) {
    counter++;

    return counter;
  }
}
