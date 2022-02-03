import 'package:counter_cubit/widgets/count.dart';
import 'package:counter_cubit/widgets/floating_counter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter Cubit',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
