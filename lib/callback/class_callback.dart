class UsingCallback {
  static Function(int)? callbackCounter;
  static incrementCounter(int counter) {
    callbackCounter!(counter);
  }
}
