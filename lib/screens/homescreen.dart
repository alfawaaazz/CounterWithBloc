import 'package:CounterWithBloc/bloc/counter_bloc.dart';
import 'package:CounterWithBloc/methods/methods.dart';
import 'package:CounterWithBloc/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterBloc = context.watch<CounterBloc>();
    final CounterMethods counterMethods = CounterMethods(counterBloc);
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter with Bloc"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              if (state is CounterIncrement) {
                return CounterText("${state.counterModel.counterValue}");
              } else if (state is CounterDecrement) {
                return CounterText("${state.counterModel.counterValue}");
              } else if (state is CounterReset) {
                return CounterText("${state.counterModel.counterValue}");
              } else {
                return Text("Nothing Here");
              }
            },
          ),
          RaisedButton(
            onPressed: counterMethods.increment,
            child: Text("Increment"),
          ),
          RaisedButton(
            onPressed: counterMethods.decrement,
            child: Text("Decrement"),
          ),
          RaisedButton(
            onPressed: counterMethods.reset,
            child: Text("Reset"),
          ),
        ],
      ),
    );
  }
}
