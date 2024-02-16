// ignore_for_file: must_be_immutable

part of 'android_large_107_bloc.dart';

/// Represents the state of AndroidLarge107 in the application.
class AndroidLarge107State extends Equatable {
  AndroidLarge107State({
    this.phoneNumberController,
    this.passwordController,
    this.androidLarge107ModelObj,
  });

  TextEditingController? phoneNumberController;

  TextEditingController? passwordController;

  AndroidLarge107Model? androidLarge107ModelObj;

  @override
  List<Object?> get props => [
        phoneNumberController,
        passwordController,
        androidLarge107ModelObj,
      ];
  AndroidLarge107State copyWith({
    TextEditingController? phoneNumberController,
    TextEditingController? passwordController,
    AndroidLarge107Model? androidLarge107ModelObj,
  }) {
    return AndroidLarge107State(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      passwordController: passwordController ?? this.passwordController,
      androidLarge107ModelObj:
          androidLarge107ModelObj ?? this.androidLarge107ModelObj,
    );
  }
}
