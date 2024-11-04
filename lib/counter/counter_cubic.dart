/*

CUBIT: Simplified version of Bloc for state management

Let's create our own counter cubit

*/

import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  // constructor: get initial state
  CounterCubit(super.initialState);

  // increment
  void increment() => emit(state + 1);

  // decrement
  void decrement() => emit(state - 1);

  // on change
  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    print(change);
  }
}