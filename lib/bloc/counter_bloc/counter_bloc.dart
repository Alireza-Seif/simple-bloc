import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_bloc/bloc/counter_bloc/counter_event.dart';
import 'package:simple_bloc/bloc/counter_bloc/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter = 0;
  CounterBloc() : super(CounterInit(0)) {
    on<IncreaementPressed>((event, emit) => emit(UpdateCounter(++counter)));
    on<DecreamentPressed>((event, emit) => emit(UpdateCounter(--counter)));
    on<ResetPressed>((event, emit) => emit(UpdateCounter(counter = 0)));
  }
}
