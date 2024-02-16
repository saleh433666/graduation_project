import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../models/android_large_111_model.dart';
import '/core/app_export.dart';
part 'android_large_111_event.dart';
part 'android_large_111_state.dart';

/// A bloc that manages the state of a AndroidLarge111 according to the event that is dispatched to it.
class AndroidLarge111Bloc
    extends Bloc<AndroidLarge111Event, AndroidLarge111State> {
  AndroidLarge111Bloc(AndroidLarge111State initialState) : super(initialState) {
    on<AndroidLarge111InitialEvent>(_onInitialize);
  }

  _onInitialize(
    AndroidLarge111InitialEvent event,
    Emitter<AndroidLarge111State> emit,
  ) async {
    emit(state.copyWith(enterCodeController: TextEditingController()));
  }
}
