// ignore_for_file: must_be_immutable

part of 'android_large_seventyfour_bloc.dart';

/// Represents the state of AndroidLargeSeventyfour in the application.
class AndroidLargeSeventyfourState extends Equatable {
  AndroidLargeSeventyfourState({this.androidLargeSeventyfourModelObj});

  AndroidLargeSeventyfourModel? androidLargeSeventyfourModelObj;

  @override
  List<Object?> get props => [
        androidLargeSeventyfourModelObj,
      ];
  AndroidLargeSeventyfourState copyWith(
      {AndroidLargeSeventyfourModel? androidLargeSeventyfourModelObj}) {
    return AndroidLargeSeventyfourState(
      androidLargeSeventyfourModelObj: androidLargeSeventyfourModelObj ??
          this.androidLargeSeventyfourModelObj,
    );
  }
}
