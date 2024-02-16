import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../models/android_large_119_model.dart';
import '/core/app_export.dart';
part 'android_large_119_event.dart';
part 'android_large_119_state.dart';

/// A bloc that manages the state of a AndroidLarge119 according to the event that is dispatched to it.
class AndroidLarge119Bloc
    extends Bloc<AndroidLarge119Event, AndroidLarge119State> {
  AndroidLarge119Bloc(AndroidLarge119State initialState) : super(initialState) {
    on<AndroidLarge119InitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<AndroidLarge119State> emit,
  ) {
    emit(state.copyWith(rememberMeCheckBox: event.value));
  }

  _onInitialize(
    AndroidLarge119InitialEvent event,
    Emitter<AndroidLarge119State> emit,
  ) async {
    emit(state.copyWith(
        cardNumberEditTextController: TextEditingController(),
        nameEditTextController: TextEditingController(),
        dateEditTextController: TextEditingController(),
        zipcodeEditTextController: TextEditingController(),
        rememberMeCheckBox: false));
  }
}
