import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../models/android_large_101_model.dart';
import '/core/app_export.dart';
part 'android_large_101_event.dart';
part 'android_large_101_state.dart';

/// A bloc that manages the state of a AndroidLarge101 according to the event that is dispatched to it.
class AndroidLarge101Bloc
    extends Bloc<AndroidLarge101Event, AndroidLarge101State> {
  AndroidLarge101Bloc(AndroidLarge101State initialState) : super(initialState) {
    on<AndroidLarge101InitialEvent>(_onInitialize);
  }

  _onInitialize(
    AndroidLarge101InitialEvent event,
    Emitter<AndroidLarge101State> emit,
  ) async {}
}
