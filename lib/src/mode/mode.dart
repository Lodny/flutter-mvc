class CounterModel {
  int _count = 0;

  int get count => _count;
  int inc() => ++_count;
  int dec() => --_count;
}
