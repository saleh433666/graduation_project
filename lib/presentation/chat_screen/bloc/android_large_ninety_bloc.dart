import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../models/android_large_ninety_model.dart';
import '/core/app_export.dart';
part 'android_large_ninety_event.dart';
part 'android_large_ninety_state.dart';

/// A bloc that manages the state of a AndroidLargeNinety according to the event that is dispatched to it.
class AndroidLargeNinetyBloc
    extends Bloc<AndroidLargeNinetyEvent, AndroidLargeNinetyState> {
  AndroidLargeNinetyBloc(AndroidLargeNinetyState initialState)
      : super(initialState) {
    on<AndroidLargeNinetyInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AndroidLargeNinetyInitialEvent event,
    Emitter<AndroidLargeNinetyState> emit,
  ) async {
    emit(state.copyWith(
      messageController: TextEditingController(),
    ));
  }
}
