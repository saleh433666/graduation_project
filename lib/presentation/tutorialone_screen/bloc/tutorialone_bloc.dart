import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../models/tutorialone_model.dart';
import '/core/app_export.dart';
part 'tutorialone_event.dart';
part 'tutorialone_state.dart';

/// A bloc that manages the state of a Tutorialone according to the event that is dispatched to it.
class TutorialoneBloc extends Bloc<TutorialoneEvent, TutorialoneState> {
  TutorialoneBloc(TutorialoneState initialState) : super(initialState) {
    on<TutorialoneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TutorialoneInitialEvent event,
    Emitter<TutorialoneState> emit,
  ) async {}
}
