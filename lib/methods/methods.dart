import 'package:CounterWithBloc/bloc/counter_bloc.dart';

class CounterMethods {
  final CounterBloc counterBloc;
  CounterMethods(this.counterBloc);
  void increment() {
    print("Increment");
    counterBloc.add(IncrementCounter());
  }

  void decrement() {
    print("Decrement");
    counterBloc.add(DecrementCounter());
  }

  void reset() {
    print("Reset");
    counterBloc.add(ResetCounter());
  }
}
