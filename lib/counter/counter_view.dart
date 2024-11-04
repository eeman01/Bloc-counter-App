/*

  COUNTER VIEW: responsible for just the UI

  - use BlocBuilder

*/

import 'package:bloc_tutorial/counter/counter_cubic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  // Build UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // BODY
        body: BlocBuilder<CounterCubit, int>(
          builder: (context, state) {
            return Center(
              child: Text(
                state.toString(),
                style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w300,
                ),
              ),
            );
          },
        ),

        // BUTTONS
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // INCREMENT BUTTON
            FloatingActionButton(
              onPressed: () => context.read<CounterCubit>().increment(),
              child: const Icon(Icons.add),
            ),
            const SizedBox(height: 20),
            // DECREMENT BUTTON
            FloatingActionButton(
              onPressed: () => context.read<CounterCubit>().decrement(),
              child: const Icon(Icons.remove),
            ),
          ],
        ));
  }
}
