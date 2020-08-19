import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tab_with_cubit_example/cubit/tabcubit_cubit.dart';
import 'package:tab_with_cubit_example/tab_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<TabcubitCubit>(create: (ctx) => TabcubitCubit()),
    ], child: MaterialApp(
       title: 'Tab With Cubit',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: TabScreen(),
    ));
  }
}
