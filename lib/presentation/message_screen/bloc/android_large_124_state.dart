// ignore_for_file: must_be_immutable

part of 'android_large_124_bloc.dart';

/// Represents the state of AndroidLarge124 in the application.
class AndroidLarge124State extends Equatable {
  AndroidLarge124State({this.androidLarge124ModelObj});

  AndroidLarge124Model? androidLarge124ModelObj;

  @override
  List<Object?> get props => [
        androidLarge124ModelObj,
      ];
  AndroidLarge124State copyWith(
      {AndroidLarge124Model? androidLarge124ModelObj}) {
    return AndroidLarge124State(
      androidLarge124ModelObj:
          androidLarge124ModelObj ?? this.androidLarge124ModelObj,
    );
  }
}
