import 'dart:async';

import 'package:core_app/core/blocs/count_event.dart';
import 'package:core_app/core/blocs/count_state.dart';

class CounterBloc {
  var state = CounterState(0);

  final eventController = StreamController<CounterEvent>();
  final stateController = StreamController<CounterState>();

  CounterBloc() {
    eventController.stream.listen((event) {
      if (event is IncrementEvent) {
        state = CounterState(state.counter + event.increment);
      } else if (event is DecrementEvent) {
        state = CounterState(state.counter - event.decrement);
      } else if (event is ResetCounterEvent) {
        state = CounterState(0);
      }

      stateController.sink.add(state);
    });
  }

  void dispose() {
    eventController.close();
    stateController.close();
  }
}
