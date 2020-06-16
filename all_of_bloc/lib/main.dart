import 'package:flutter/material.dart';
import 'package:jm_all_of_bloc/home.dart';
import 'package:bloc_pattern/bloc_pattern.dart';
import 'home_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      child: MaterialApp(
        home: HomeWidget(),        
      ),
      bloc: HomeBloc(),
    );
  }
}
