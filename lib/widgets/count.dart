import 'package:flutter/material.dart';

class Count extends StatelessWidget {
  const Count({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("0", style: Theme.of(context).textTheme.headline2);
  }
}
