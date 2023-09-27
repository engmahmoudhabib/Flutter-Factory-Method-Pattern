// we want one instance of this class only
// use wiht sockets , DBs
import 'package:flutter/foundation.dart';

class SingletonOne {
  int? x;
  int? y;

// we don't want to instanitate it
  SingletonOne._internal(int? _x, int? _y)
      : x = _x,
        y = _y {
    if (kDebugMode) {
      print('..... private constructor run..........');
    }
  }

  // we need only one instance from it
  static SingletonOne? _instance;

  // we need to get that instance
  // we can replace it with factory
  /* static SingletonOne? getInstance() {
    _instance ??= SingletonOne._internal();
    return _instance;
  }
 */

  factory SingletonOne(int? _x, int? _y) {
    _instance ??= SingletonOne._internal(_x, _y);
    return _instance!;
  }
}
