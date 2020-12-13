part of 'counter_bloc.dart';

@immutable
abstract class CounterState {
  const CounterState();
}

class CounterInitial extends CounterState {
  const CounterInitial();
}

class CounterIncrement extends CounterState {
  final CounterModel counterModel;
  const CounterIncrement(this.counterModel);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is CounterIncrement && o.counterModel == counterModel;
  }

  @override
  int get hashCode => counterModel.hashCode;
}

class CounterDecrement extends CounterState {
  final CounterModel counterModel;
  const CounterDecrement(this.counterModel);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is CounterDecrement && o.counterModel == counterModel;
  }

  @override
  int get hashCode => counterModel.hashCode;
}

class CounterReset extends CounterState {
  final CounterModel counterModel;
  const CounterReset(this.counterModel);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is CounterReset && o.counterModel == counterModel;
  }

  @override
  int get hashCode => counterModel.hashCode;
}
