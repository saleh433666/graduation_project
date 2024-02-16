// ignore_for_file: must_be_immutable

part of 'user_edit_bloc.dart';

/// Represents the state of UserEdit in the application.
class UserEditState extends Equatable {
  UserEditState({
    this.fullNameController,
    this.emailController,
    this.phoneNumberController,
    this.passwordController,
    this.userEditModelObj,
  });

  TextEditingController? fullNameController;

  TextEditingController? emailController;

  TextEditingController? phoneNumberController;

  TextEditingController? passwordController;

  UserEditModel? userEditModelObj;

  @override
  List<Object?> get props => [
        fullNameController,
        emailController,
        phoneNumberController,
        passwordController,
        userEditModelObj,
      ];
  UserEditState copyWith({
    TextEditingController? fullNameController,
    TextEditingController? emailController,
    TextEditingController? phoneNumberController,
    TextEditingController? passwordController,
    UserEditModel? userEditModelObj,
  }) {
    return UserEditState(
      fullNameController: fullNameController ?? this.fullNameController,
      emailController: emailController ?? this.emailController,
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      passwordController: passwordController ?? this.passwordController,
      userEditModelObj: userEditModelObj ?? this.userEditModelObj,
    );
  }
}
