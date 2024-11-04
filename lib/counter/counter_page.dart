/*

  COUNTER PAGE: responsible for providing the CounterCubit to CounterView(UI)
  - use Bloc Provider

 */

import 'package:bloc_tutorial/counter/counter_cubic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_view.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    // bloc provider
    return BlocProvider(
      create: (context) => CounterCubit(0),

      // counter view
      child: BlocListener<CounterCubit, int>(
        listener: (context, state) {
          // show pop up when it reaches 10
          if (state == 10) {
            showDialog(
              context: context,
              builder: (context) => const AlertDialog(
                content: Text('10 reached!'),
              ),
            );
          }
        },
        child: const CounterView(),
      ),
    );
  }
}
