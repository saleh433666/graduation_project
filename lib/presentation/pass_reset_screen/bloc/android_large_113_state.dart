// ignore_for_file: must_be_immutable

part of 'android_large_113_bloc.dart';

/// Represents the state of AndroidLarge113 in the application.
class AndroidLarge113State extends Equatable {
  AndroidLarge113State({this.androidLarge113ModelObj});

  AndroidLarge113Model? androidLarge113ModelObj;

  @override
  List<Object?> get props => [
        androidLarge113ModelObj,
      ];
  AndroidLarge113State copyWith(
      {AndroidLarge113Model? androidLarge113ModelObj}) {
    return AndroidLarge113State(
      androidLarge113ModelObj:
          androidLarge113ModelObj ?? this.androidLarge113ModelObj,
    );
  }
}
