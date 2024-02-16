import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../models/android_large_110_model.dart';
import '/core/app_export.dart';
part 'android_large_110_event.dart';
part 'android_large_110_state.dart';

/// A bloc that manages the state of a AndroidLarge110 according to the event that is dispatched to it.
class AndroidLarge110Bloc
    extends Bloc<AndroidLarge110Event, AndroidLarge110State> {
  AndroidLarge110Bloc(AndroidLarge110State initialState) : super(initialState) {
    on<AndroidLarge110InitialEvent>(_onInitialize);
  }

  _onInitialize(
    AndroidLarge110InitialEvent event,
    Emitter<AndroidLarge110State> emit,
  ) async {
    emit(state.copyWith(emailController: TextEditingController()));
  }
}
