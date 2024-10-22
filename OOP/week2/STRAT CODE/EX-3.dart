class MyDuration {
  final int _ms;
  MyDuration.ms(this._ms);
  MyDuration.s(int second) : this.ms(second * 1000);
  MyDuration.m(int minute) : this.ms(minute * 60 * 1000);
  MyDuration.h(int hour) : this.ms(hour * 3600 * 1000);

  int get ms => _ms;
  double get s => _ms / 1000;
  double get m => _ms / 60 / 1000;
  double get h => _ms / 3600 / 1000;

  MyDuration operator +(MyDuration other) {
    return MyDuration.ms(this._ms + other.ms);
  }

  bool operator >(MyDuration other) {
    return this._ms > other.ms;
  }
  bool operator <(MyDuration other) {
    return this._ms < other.ms;
  }
}

main() {
  MyDuration d1 = MyDuration.s(4);
  MyDuration d2 = MyDuration.m(2);
  print((d1 + d2).s);
  print(d1 > d2); //return false
}
