class CounterModel {
  final int counterValue;
  CounterModel(this.counterValue);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is CounterModel && o.counterValue == counterValue;
  }

  @override
  int get hashCode => counterValue.hashCode;
}
