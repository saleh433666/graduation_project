import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../models/android_large_seventyfour_model.dart';
import '/core/app_export.dart';
part 'android_large_seventyfour_event.dart';
part 'android_large_seventyfour_state.dart';

/// A bloc that manages the state of a AndroidLargeSeventyfour according to the event that is dispatched to it.
class AndroidLargeSeventyfourBloc
    extends Bloc<AndroidLargeSeventyfourEvent, AndroidLargeSeventyfourState> {
  AndroidLargeSeventyfourBloc(AndroidLargeSeventyfourState initialState)
      : super(initialState) {
    on<AndroidLargeSeventyfourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AndroidLargeSeventyfourInitialEvent event,
    Emitter<AndroidLargeSeventyfourState> emit,
  ) async {}
}
