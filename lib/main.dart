import 'package:counter_cubit/store/counter_cubit.dart';
import 'package:counter_cubit/widgets/count.dart';
import 'package:counter_cubit/widgets/floating_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    BlocProvider(
      create: (context) => CounterCubit(),
      child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter Cubit',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          splashColor: Colors.white12
        )
      ),
      home: const Scaffold(
        body: Center(
          child: Count(),
        ),
        floatingActionButton: FloatingCounter(),
      ),
    );
  }
}
