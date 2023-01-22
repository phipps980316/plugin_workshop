import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_plugin_example/example_app/viewmodel/my_example_app_cubit.dart';
import 'package:my_plugin_example/example_app/viewmodel/my_example_app_state.dart';

class MyExampleAppWidget extends StatelessWidget {
  const MyExampleAppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyExampleAppCubit, MyExampleAppState>(
        builder: (context, state) {
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Plugin example app'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(child: Text('Running on: ${state.platform}')),
              Center(child: Text('Message: ${state.message}')),
              Center(child: Text('Locale: ${state.locale}')),
              ElevatedButton(
                  onPressed:
                      BlocProvider.of<MyExampleAppCubit>(context).openSettings,
                  child: Text('Open Settings'))
            ],
          ),
        ),
      );
    });
  }
}
