import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../models/tutorialtwo_model.dart';
import '/core/app_export.dart';
part 'tutorialtwo_event.dart';
part 'tutorialtwo_state.dart';

/// A bloc that manages the state of a Tutorialtwo according to the event that is dispatched to it.
class TutorialtwoBloc extends Bloc<TutorialtwoEvent, TutorialtwoState> {
  TutorialtwoBloc(TutorialtwoState initialState) : super(initialState) {
    on<TutorialtwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TutorialtwoInitialEvent event,
    Emitter<TutorialtwoState> emit,
  ) async {}
}
