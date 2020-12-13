import 'package:CounterWithBloc/models/counter_model.dart';

abstract class CounterRepository {
  CounterModel increment();
  CounterModel decrement();
  CounterModel reset();
}

class CounterRepoMethods implements CounterRepository {
  int current = 0;

  @override
  CounterModel increment() {
    print("Increment");
    current++;
    return CounterModel(current);
  }

  @override
  CounterModel decrement() {
    print("Decrement");
    current--;
    return CounterModel(current);
  }

  @override
  CounterModel reset() {
    print("Reset");
    int resetValue = 0;
    current = 0;
    return CounterModel(resetValue);
  }
}
