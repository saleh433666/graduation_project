import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../models/android_large_120_model.dart';
import '/core/app_export.dart';
part 'android_large_120_event.dart';
part 'android_large_120_state.dart';

/// A bloc that manages the state of a AndroidLarge120 according to the event that is dispatched to it.
class AndroidLarge120Bloc
    extends Bloc<AndroidLarge120Event, AndroidLarge120State> {
  AndroidLarge120Bloc(AndroidLarge120State initialState) : super(initialState) {
    on<AndroidLarge120InitialEvent>(_onInitialize);
  }

  _onInitialize(
    AndroidLarge120InitialEvent event,
    Emitter<AndroidLarge120State> emit,
  ) async {
    emit(state.copyWith(
      floatingTextFieldController: TextEditingController(),
      floatingTextFieldController1: TextEditingController(),
      floatingTextFieldController2: TextEditingController(),
      floatingTextFieldController3: TextEditingController(),
      floatingTextFieldController4: TextEditingController(),
      floatingTextFieldController5: TextEditingController(),
      floatingTextFieldController6: TextEditingController(),
      floatingTextFieldController7: TextEditingController(),
      floatingTextFieldController8: TextEditingController(),
      floatingTextFieldController9: TextEditingController(),
    ));
  }
}
