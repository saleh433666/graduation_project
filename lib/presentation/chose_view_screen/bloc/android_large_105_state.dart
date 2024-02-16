// ignore_for_file: must_be_immutable

part of 'android_large_105_bloc.dart';

/// Represents the state of AndroidLarge105 in the application.
class AndroidLarge105State extends Equatable {
  AndroidLarge105State({this.androidLarge105ModelObj});

  AndroidLarge105Model? androidLarge105ModelObj;

  @override
  List<Object?> get props => [
        androidLarge105ModelObj,
      ];
  AndroidLarge105State copyWith(
      {AndroidLarge105Model? androidLarge105ModelObj}) {
    return AndroidLarge105State(
      androidLarge105ModelObj:
          androidLarge105ModelObj ?? this.androidLarge105ModelObj,
    );
  }
}
