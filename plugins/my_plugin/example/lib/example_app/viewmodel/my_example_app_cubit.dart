import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_plugin/my_plugin.dart';
import 'package:my_plugin_example/example_app/viewmodel/my_example_app_state.dart';

class MyExampleAppCubit extends Cubit<MyExampleAppState> {
  MyExampleAppCubit()
      : super(MyExampleAppState(platform: "Unknown platform version")) {
    getPlatformVersion();
  }

  final MyPlugin _plugin = MyPlugin();

  void getPlatformVersion() {
    _plugin
        .getPlatformVersion()
        .then((value) => emit(state.copyWith(platform: value)));
  }
}
