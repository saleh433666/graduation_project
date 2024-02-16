import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../models/android_large_109_model.dart';
import '/core/app_export.dart';
part 'android_large_109_event.dart';
part 'android_large_109_state.dart';

/// A bloc that manages the state of a AndroidLarge109 according to the event that is dispatched to it.
class AndroidLarge109Bloc
    extends Bloc<AndroidLarge109Event, AndroidLarge109State> {
  AndroidLarge109Bloc(AndroidLarge109State initialState) : super(initialState) {
    on<AndroidLarge109InitialEvent>(_onInitialize);
  }

  _onInitialize(
    AndroidLarge109InitialEvent event,
    Emitter<AndroidLarge109State> emit,
  ) async {
    emit(state.copyWith(
        firstNameEditTextController: TextEditingController(),
        lastNameEditTextController: TextEditingController(),
        emailEditTextController: TextEditingController(),
        phoneNumberEditTextController: TextEditingController(),
        passwordEditTextController: TextEditingController(),
        confirmPasswordEditTextController: TextEditingController(),
        nationalIdEditTextController: TextEditingController()));
  }
}
