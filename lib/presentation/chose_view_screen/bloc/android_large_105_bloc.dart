import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../models/android_large_105_model.dart';
import '/core/app_export.dart';
part 'android_large_105_event.dart';
part 'android_large_105_state.dart';

/// A bloc that manages the state of a AndroidLarge105 according to the event that is dispatched to it.
class AndroidLarge105Bloc
    extends Bloc<AndroidLarge105Event, AndroidLarge105State> {
  AndroidLarge105Bloc(AndroidLarge105State initialState) : super(initialState) {
    on<AndroidLarge105InitialEvent>(_onInitialize);
  }

  _onInitialize(
    AndroidLarge105InitialEvent event,
    Emitter<AndroidLarge105State> emit,
  ) async {}
}
