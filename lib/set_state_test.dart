class CounterUtils {
  // static int valueCallback = 0;
  static void Function(int) callback = (int value) {};
  static void incrementCounter(int counter) {
    callback(counter);
  }
  // static void incrementCounter(int counter) {
  //   callback!(counter);
  // }
}
