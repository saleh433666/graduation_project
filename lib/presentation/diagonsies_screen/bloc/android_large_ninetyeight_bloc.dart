import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../models/android_large_ninetyeight_model.dart';
import '/core/app_export.dart';
part 'android_large_ninetyeight_event.dart';
part 'android_large_ninetyeight_state.dart';

/// A bloc that manages the state of a AndroidLargeNinetyeight according to the event that is dispatched to it.
class AndroidLargeNinetyeightBloc
    extends Bloc<AndroidLargeNinetyeightEvent, AndroidLargeNinetyeightState> {
  AndroidLargeNinetyeightBloc(AndroidLargeNinetyeightState initialState)
      : super(initialState) {
    on<AndroidLargeNinetyeightInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AndroidLargeNinetyeightInitialEvent event,
    Emitter<AndroidLargeNinetyeightState> emit,
  ) async {}
}
