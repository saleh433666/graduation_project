import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../models/user_edit_model.dart';
import '/core/app_export.dart';
part 'user_edit_event.dart';
part 'user_edit_state.dart';

/// A bloc that manages the state of a UserEdit according to the event that is dispatched to it.
class UserEditBloc extends Bloc<UserEditEvent, UserEditState> {
  UserEditBloc(UserEditState initialState) : super(initialState) {
    on<UserEditInitialEvent>(_onInitialize);
  }

  _onInitialize(
    UserEditInitialEvent event,
    Emitter<UserEditState> emit,
  ) async {
    emit(state.copyWith(
        fullNameController: TextEditingController(),
        emailController: TextEditingController(),
        phoneNumberController: TextEditingController(),
        passwordController: TextEditingController()));
  }
}
