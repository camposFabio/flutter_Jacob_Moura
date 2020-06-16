import 'dart:async';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';

class HomeBloc implements BlocBase {
  var _streamController = BehaviorSubject<int>.seeded(0);
  var _streamController2 = BehaviorSubject<int>.seeded(0);

  Stream<int> get outCount => _streamController.stream;
  Stream<int> get outCount2 => _streamController2.stream;

  Sink<int> get inCount => _streamController.sink;

  increment() {
    _streamController.sink.add(++_streamController.value);
  }

  increment2() {
    _streamController2.sink.add(++_streamController2.value);
  }

  void decrement() {
    _streamController2.sink.add(--_streamController.value);
  }

  @override
  void dispose() {
    _streamController.close();
    _streamController2.close();
  }
}
