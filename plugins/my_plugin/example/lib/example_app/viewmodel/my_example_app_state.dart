import 'package:equatable/equatable.dart';

class MyExampleAppState extends Equatable {
  MyExampleAppState({required this.platform});

  final String? platform;

  MyExampleAppState copyWith({String? platform}) {
    return MyExampleAppState(platform: platform ?? this.platform);
  }

  @override
  List<Object?> get props => [platform];
}
