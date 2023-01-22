import 'package:equatable/equatable.dart';

class MyExampleAppState extends Equatable {
  MyExampleAppState({
    required this.platform,
    required this.message,
    required this.locale,
  });

  final String? platform;
  final String? message;
  final String? locale;

  MyExampleAppState copyWith({
    String? platform,
    String? message,
    String? locale,
  }) {
    return MyExampleAppState(
      platform: platform ?? this.platform,
      message: message ?? this.message,
      locale: locale ?? this.locale,
    );
  }

  @override
  List<Object?> get props => [
        platform,
        message,
        locale,
      ];
}
