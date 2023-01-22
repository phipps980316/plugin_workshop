import 'package:equatable/equatable.dart';

class MyHomePageState extends Equatable {
  MyHomePageState({
    required this.count,
    required this.platform,
  });

  final int count;
  final String platform;

  MyHomePageState copyWith({int? count, String? platform}) {
    return MyHomePageState(
      count: count ?? this.count,
      platform: platform ?? this.platform,
    );
  }

  @override
  List<Object?> get props => [count, platform];
}
