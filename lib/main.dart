import 'package:CounterWithBloc/bloc/counter_bloc.dart';
import 'package:CounterWithBloc/repositories/counter_repository.dart';
import 'package:CounterWithBloc/screens/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BlocProvider(
        create: (context) => CounterBloc(CounterRepoMethods()),
        child: HomeScreen(),
      ),
    );
  }
}
