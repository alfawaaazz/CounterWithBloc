import 'package:CounterWithBloc/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';

class CounterText extends StatelessWidget {
  final String counterText;
  CounterText(this.counterText);
  @override
  Widget build(BuildContext context) {
    return Text(
      "Counter Value: $counterText",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
