import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_bloc/bloc/home_bloc.dart';
import 'package:simple_bloc/bloc/home_event.dart';
import 'package:simple_bloc/bloc/home_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state is ColorInit) {
                return Container(color: state.color);
              }
              if (state is ColorRePaint) {
                return Container(
                  color: state.color,
                );
              }
              return Container(color: Colors.black);
            },
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                context.read<HomeBloc>().add(ChangeColorEvent());
              },
              child: const Text('change color'),
            ),
          )
        ],
      ),
    );
  }
}
