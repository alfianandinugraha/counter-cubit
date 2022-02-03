import 'package:flutter/material.dart';

class FloatingCounter extends StatelessWidget {
  const FloatingCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        const SizedBox(height: 10),
        FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.remove),
        )
      ],
    );
  }
}
