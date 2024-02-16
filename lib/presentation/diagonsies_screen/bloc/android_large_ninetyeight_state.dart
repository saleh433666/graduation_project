// ignore_for_file: must_be_immutable

part of 'android_large_ninetyeight_bloc.dart';

/// Represents the state of AndroidLargeNinetyeight in the application.
class AndroidLargeNinetyeightState extends Equatable {
  AndroidLargeNinetyeightState({this.androidLargeNinetyeightModelObj});

  AndroidLargeNinetyeightModel? androidLargeNinetyeightModelObj;

  @override
  List<Object?> get props => [
        androidLargeNinetyeightModelObj,
      ];
  AndroidLargeNinetyeightState copyWith(
      {AndroidLargeNinetyeightModel? androidLargeNinetyeightModelObj}) {
    return AndroidLargeNinetyeightState(
      androidLargeNinetyeightModelObj: androidLargeNinetyeightModelObj ??
          this.androidLargeNinetyeightModelObj,
    );
  }
}
