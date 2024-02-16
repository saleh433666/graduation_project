import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../models/android_large_107_model.dart';
import '/core/app_export.dart';
part 'android_large_107_event.dart';
part 'android_large_107_state.dart';

/// A bloc that manages the state of a AndroidLarge107 according to the event that is dispatched to it.
class AndroidLarge107Bloc
    extends Bloc<AndroidLarge107Event, AndroidLarge107State> {
  AndroidLarge107Bloc(AndroidLarge107State initialState) : super(initialState) {
    on<AndroidLarge107InitialEvent>(_onInitialize);
  }

  _onInitialize(
    AndroidLarge107InitialEvent event,
    Emitter<AndroidLarge107State> emit,
  ) async {
    emit(state.copyWith(
        phoneNumberController: TextEditingController(),
        passwordController: TextEditingController()));
  }
}
