import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_plugin_example/example_app/presentation/my_example_app_widget.dart';
import 'package:my_plugin_example/example_app/viewmodel/my_example_app_cubit.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => MyExampleAppCubit(),
    child: const MyExampleAppWidget(),
  ));
}
