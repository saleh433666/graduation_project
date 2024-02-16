// ignore_for_file: must_be_immutable

part of 'android_large_101_bloc.dart';

/// Represents the state of AndroidLarge101 in the application.
class AndroidLarge101State extends Equatable {
  AndroidLarge101State({this.androidLarge101ModelObj});

  AndroidLarge101Model? androidLarge101ModelObj;

  @override
  List<Object?> get props => [
        androidLarge101ModelObj,
      ];
  AndroidLarge101State copyWith(
      {AndroidLarge101Model? androidLarge101ModelObj}) {
    return AndroidLarge101State(
      androidLarge101ModelObj:
          androidLarge101ModelObj ?? this.androidLarge101ModelObj,
    );
  }
}
