import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../models/android_large_112_model.dart';
import '/core/app_export.dart';
part 'android_large_112_event.dart';
part 'android_large_112_state.dart';

/// A bloc that manages the state of a AndroidLarge112 according to the event that is dispatched to it.
class AndroidLarge112Bloc
    extends Bloc<AndroidLarge112Event, AndroidLarge112State> {
  AndroidLarge112Bloc(AndroidLarge112State initialState) : super(initialState) {
    on<AndroidLarge112InitialEvent>(_onInitialize);
  }

  _onInitialize(
    AndroidLarge112InitialEvent event,
    Emitter<AndroidLarge112State> emit,
  ) async {
    emit(state.copyWith(
        newpasswordController: TextEditingController(),
        confirmPasswordController: TextEditingController()));
  }
}
