part of 'counter_bloc.dart';

class CounterState {
  int counter;
  CounterState({required this.counter});
}

class InitialState extends CounterState {
  InitialState() : super(counter: 0);
}
