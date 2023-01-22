import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plugin_workshop/homepage/viewmodel/my_home_page_cubit.dart';
import 'package:plugin_workshop/homepage/viewmodel/my_home_page_state.dart';

class MyHomePageWidget extends StatelessWidget {
  const MyHomePageWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyHomePageCubit, MyHomePageState>(
        builder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '${state.count}',
                style: Theme.of(context).textTheme.headline4,
              ),
              Text('Running on: ${state.platform}'),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: BlocProvider.of<MyHomePageCubit>(context).addOne,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      );
    });
  }
}
