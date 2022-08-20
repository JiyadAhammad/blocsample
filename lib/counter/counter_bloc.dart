import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(InitialState()) {
    on<Increment>((event, emit) {
      final current = state.counter;
      final incrementvalue = current + 1;
      return emit(CounterState(counter: incrementvalue));
    });
    on<Decrement>((event, emit) {
      final current = state.counter;
      final decremtvalue = current - 1;
      return emit(CounterState(counter: decremtvalue));
    });
  }
}
