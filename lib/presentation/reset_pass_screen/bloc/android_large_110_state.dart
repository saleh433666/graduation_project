// ignore_for_file: must_be_immutable

part of 'android_large_110_bloc.dart';

/// Represents the state of AndroidLarge110 in the application.
class AndroidLarge110State extends Equatable {
  AndroidLarge110State({
    this.emailController,
    this.androidLarge110ModelObj,
  });

  TextEditingController? emailController;

  AndroidLarge110Model? androidLarge110ModelObj;

  @override
  List<Object?> get props => [
        emailController,
        androidLarge110ModelObj,
      ];
  AndroidLarge110State copyWith({
    TextEditingController? emailController,
    AndroidLarge110Model? androidLarge110ModelObj,
  }) {
    return AndroidLarge110State(
      emailController: emailController ?? this.emailController,
      androidLarge110ModelObj:
          androidLarge110ModelObj ?? this.androidLarge110ModelObj,
    );
  }
}
