abstract class CounterEvent {}

class IncrementEvent extends CounterEvent {
  final int increment;

  IncrementEvent(this.increment);
}

class DecrementEvent extends CounterEvent {
  final int decrement;

  DecrementEvent(this.decrement);
}

class ResetCounterEvent extends CounterEvent {}
