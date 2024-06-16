abstract class CounterState {}

class CounterInit extends CounterState {
  int counter;
  CounterInit(this.counter);
}

class UpdateCounter extends CounterState {
  int counter;
  UpdateCounter(this.counter);
}


class ResetCounter extends CounterState {
  int counter;
  ResetCounter(this.counter);
}