import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_plugin/my_plugin.dart';
import 'package:plugin_workshop/homepage/viewmodel/my_home_page_state.dart';

class MyHomePageCubit extends Cubit<MyHomePageState> {
  MyHomePageCubit()
      : super(MyHomePageState(
          count: 0,
          platform: "Unknown platform version",
        )) {
    getPlatformVersion();
  }

  MyPlugin _plugin = MyPlugin();

  void addOne() {
    emit(state.copyWith(count: state.count + 1));
  }

  void getPlatformVersion() {
    _plugin
        .getPlatformVersion()
        .then((value) => emit(state.copyWith(platform: value)));
  }
}
