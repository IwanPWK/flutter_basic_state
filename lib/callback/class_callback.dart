class UsingCallback {
  static Function()? callbackCounter;
  static incrementCounter() {
    callbackCounter!();
  }
}
