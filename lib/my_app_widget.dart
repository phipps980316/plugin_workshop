import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plugin_workshop/homepage/presentation/my_home_page_widget.dart';
import 'package:plugin_workshop/homepage/viewmodel/my_home_page_cubit.dart';

class MyAppWidget extends StatelessWidget {
  const MyAppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
          create: (_) => MyHomePageCubit(),
          child: const MyHomePageWidget(title: 'Flutter Demo Home Page')),
    );
  }
}
