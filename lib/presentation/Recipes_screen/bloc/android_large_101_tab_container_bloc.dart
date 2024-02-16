import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../models/android_large_101_tab_container_model.dart';
import '/core/app_export.dart';
part 'android_large_101_tab_container_event.dart';
part 'android_large_101_tab_container_state.dart';

/// A bloc that manages the state of a AndroidLarge101TabContainer according to the event that is dispatched to it.
class AndroidLarge101TabContainerBloc extends Bloc<
    AndroidLarge101TabContainerEvent, AndroidLarge101TabContainerState> {
  AndroidLarge101TabContainerBloc(AndroidLarge101TabContainerState initialState)
      : super(initialState) {
    on<AndroidLarge101TabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AndroidLarge101TabContainerInitialEvent event,
    Emitter<AndroidLarge101TabContainerState> emit,
  ) async {}
}
