// ignore_for_file: must_be_immutable

part of 'android_large_109_bloc.dart';

/// Represents the state of AndroidLarge109 in the application.
class AndroidLarge109State extends Equatable {
  AndroidLarge109State({
    this.firstNameEditTextController,
    this.lastNameEditTextController,
    this.emailEditTextController,
    this.phoneNumberEditTextController,
    this.passwordEditTextController,
    this.confirmPasswordEditTextController,
    this.nationalIdEditTextController,
    this.androidLarge109ModelObj,
  });

  TextEditingController? firstNameEditTextController;

  TextEditingController? lastNameEditTextController;

  TextEditingController? emailEditTextController;

  TextEditingController? phoneNumberEditTextController;

  TextEditingController? passwordEditTextController;

  TextEditingController? confirmPasswordEditTextController;

  TextEditingController? nationalIdEditTextController;

  AndroidLarge109Model? androidLarge109ModelObj;

  @override
  List<Object?> get props => [
        firstNameEditTextController,
        lastNameEditTextController,
        emailEditTextController,
        phoneNumberEditTextController,
        passwordEditTextController,
        confirmPasswordEditTextController,
        nationalIdEditTextController,
        androidLarge109ModelObj,
      ];
  AndroidLarge109State copyWith({
    TextEditingController? firstNameEditTextController,
    TextEditingController? lastNameEditTextController,
    TextEditingController? emailEditTextController,
    TextEditingController? phoneNumberEditTextController,
    TextEditingController? passwordEditTextController,
    TextEditingController? confirmPasswordEditTextController,
    TextEditingController? nationalIdEditTextController,
    AndroidLarge109Model? androidLarge109ModelObj,
  }) {
    return AndroidLarge109State(
      firstNameEditTextController:
          firstNameEditTextController ?? this.firstNameEditTextController,
      lastNameEditTextController:
          lastNameEditTextController ?? this.lastNameEditTextController,
      emailEditTextController:
          emailEditTextController ?? this.emailEditTextController,
      phoneNumberEditTextController:
          phoneNumberEditTextController ?? this.phoneNumberEditTextController,
      passwordEditTextController:
          passwordEditTextController ?? this.passwordEditTextController,
      confirmPasswordEditTextController: confirmPasswordEditTextController ??
          this.confirmPasswordEditTextController,
      nationalIdEditTextController:
          nationalIdEditTextController ?? this.nationalIdEditTextController,
      androidLarge109ModelObj:
          androidLarge109ModelObj ?? this.androidLarge109ModelObj,
    );
  }
}
