import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_bloc/bloc/counter_bloc/counter_bloc.dart';
import 'package:simple_bloc/bloc/counter_bloc/counter_event.dart';
import 'package:simple_bloc/bloc/counter_bloc/counter_state.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BlocBuilder<CounterBloc, CounterState>(
                builder: ((context, state) {
                  if (state is CounterInit) {
                    return Text(
                      '${state.counter}',
                      style: const TextStyle(fontSize: 60),
                    );
                  }
                  if (state is UpdateCounter) {
                    return Text(
                      '${state.counter}',
                      style: const TextStyle(fontSize: 60),
                    );
                  }

                  if (state is ResetCounter) {
                    return Text(
                      '${state.counter * 10}',
                      style: const TextStyle(fontSize: 60),
                    );
                  }
                  return const Text('error');
                }),
              ),
              ElevatedButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(IncreaementPressed());
                  },
                  child: const Text('+')),
              ElevatedButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(DecreamentPressed());
                  },
                  child: const Text('-')),
              ElevatedButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(ResetPressed());
                  },
                  child: const Text('Reset')),
            ],
          ),
        ),
      ),
    );
  }
}
