import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_bloc/bloc/home_event.dart';
import 'package:simple_bloc/bloc/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(ColorInit(Colors.black)) {
    on<ChangeColorEvent>(
      (event, emit) {
        emit(
          ColorRePaint(
            Color(
              Random().nextInt(0xffffffff),
            ),
          ),
        );
      },
    );
  }
}
