import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../models/android_large_115_model.dart';
import '/core/app_export.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
part 'android_large_115_event.dart';
part 'android_large_115_state.dart';

/// A bloc that manages the state of a AndroidLarge115 according to the event that is dispatched to it.
class AndroidLarge115Bloc
    extends Bloc<AndroidLarge115Event, AndroidLarge115State> {
  AndroidLarge115Bloc(AndroidLarge115State initialState) : super(initialState) {
    on<AndroidLarge115InitialEvent>(_onInitialize);
  }

  _onInitialize(
    AndroidLarge115InitialEvent event,
    Emitter<AndroidLarge115State> emit,
  ) async {}
}
