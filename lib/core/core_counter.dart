import 'package:core_app/core/blocs/count_bloc.dart';
import 'package:core_app/core/blocs/count_event.dart';
import 'package:core_app/core/blocs/count_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  final bloc = CounterBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
      ),
      body: Center(
        child: StreamBuilder<CounterState>(
          stream: bloc.stateController.stream,
          initialData: bloc.state,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(
                snapshot.data!.counter.toString(),
              );
            } else {
              throw Exception("No data");
            }
          },
        ),
      ),
      floatingActionButton: Row(
        children: [
          FloatingActionButton(
            child: const Icon(
              Icons.add,
            ),
            onPressed: () => bloc.eventController.sink.add(
              IncrementEvent(1),
            ),
          ),
          FloatingActionButton(
            child: const Icon(
              Icons.remove,
            ),
            onPressed: () => bloc.eventController.sink.add(
              DecrementEvent(1),
            ),
          ),
          FloatingActionButton(
            child: const Icon(
              Icons.restart_alt,
            ),
            onPressed: () => bloc.eventController.sink.add(
              ResetCounterEvent(),
            ),
          ),
        ],
      ),
    );
  }
}
