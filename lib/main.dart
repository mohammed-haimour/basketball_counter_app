import 'package:basketball_counter_app/screens/basketball_counter_homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/basketball_counter_cubit.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => BasketballCounterCubit(),
    child: const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BasketballCounterHomePage(),
    ),
  ));
}
