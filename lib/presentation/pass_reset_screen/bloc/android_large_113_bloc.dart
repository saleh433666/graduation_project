import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../models/android_large_113_model.dart';
import '/core/app_export.dart';
part 'android_large_113_event.dart';
part 'android_large_113_state.dart';

/// A bloc that manages the state of a AndroidLarge113 according to the event that is dispatched to it.
class AndroidLarge113Bloc
    extends Bloc<AndroidLarge113Event, AndroidLarge113State> {
  AndroidLarge113Bloc(AndroidLarge113State initialState) : super(initialState) {
    on<AndroidLarge113InitialEvent>(_onInitialize);
  }

  _onInitialize(
    AndroidLarge113InitialEvent event,
    Emitter<AndroidLarge113State> emit,
  ) async {}
}
