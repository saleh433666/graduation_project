// ignore_for_file: must_be_immutable

part of 'android_large_112_bloc.dart';

/// Represents the state of AndroidLarge112 in the application.
class AndroidLarge112State extends Equatable {
  AndroidLarge112State({
    this.newpasswordController,
    this.confirmPasswordController,
    this.androidLarge112ModelObj,
  });

  TextEditingController? newpasswordController;

  TextEditingController? confirmPasswordController;

  AndroidLarge112Model? androidLarge112ModelObj;

  @override
  List<Object?> get props => [
        newpasswordController,
        confirmPasswordController,
        androidLarge112ModelObj,
      ];
  AndroidLarge112State copyWith({
    TextEditingController? newpasswordController,
    TextEditingController? confirmPasswordController,
    AndroidLarge112Model? androidLarge112ModelObj,
  }) {
    return AndroidLarge112State(
      newpasswordController:
          newpasswordController ?? this.newpasswordController,
      confirmPasswordController:
          confirmPasswordController ?? this.confirmPasswordController,
      androidLarge112ModelObj:
          androidLarge112ModelObj ?? this.androidLarge112ModelObj,
    );
  }
}
