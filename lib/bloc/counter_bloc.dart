import 'dart:async';

import 'package:CounterWithBloc/models/counter_model.dart';
import 'package:CounterWithBloc/repositories/counter_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  final CounterRepository _counterRepository;
  CounterBloc(this._counterRepository) : super(CounterInitial());

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    // TODO: implement mapEventToState
    if (event is IncrementCounter) {
      print("Event is IncrementCounter");
      final newCounterValue = _counterRepository.increment();
      yield (CounterIncrement(newCounterValue));
    } else if (event is DecrementCounter) {
      print("Event is DecrementCounter");
      final newCounterValue = _counterRepository.decrement();
      yield (CounterDecrement(newCounterValue));
    } else if (event is ResetCounter) {
      print("Event is ResetCounter");
      final newCounterValue = _counterRepository.reset();
      yield (CounterReset(newCounterValue));
    }
  }
}
