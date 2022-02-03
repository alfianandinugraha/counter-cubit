import 'package:counter_cubit/store/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DecrementCounter extends StatelessWidget {
  const DecrementCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocSelector<CounterCubit, CounterState, bool>(
      selector: (state) {
        return state.count <= 0;
      },
      builder: (context, isDisabled) {
        return FloatingActionButton(
          onPressed: () {
            if (isDisabled) return;
            BlocProvider.of<CounterCubit>(context).decrement();
          },
          child: const Icon(Icons.remove),
          backgroundColor: isDisabled ? Colors.grey : Colors.blue,
          splashColor: isDisabled ? Colors.grey : Theme.of(context).floatingActionButtonTheme.splashColor,
        );
      },
    );
  }
}

class FloatingCounter extends StatelessWidget {
  const FloatingCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: () {
            BlocProvider.of<CounterCubit>(context).increment();
          },
          child: const Icon(Icons.add),
        ),
        const SizedBox(height: 10),
        const DecrementCounter()
      ],
    );
  }
}
