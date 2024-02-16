import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../models/tutorialthree_model.dart';
import '/core/app_export.dart';
part 'tutorialthree_event.dart';
part 'tutorialthree_state.dart';

/// A bloc that manages the state of a Tutorialthree according to the event that is dispatched to it.
class TutorialthreeBloc extends Bloc<TutorialthreeEvent, TutorialthreeState> {
  TutorialthreeBloc(TutorialthreeState initialState) : super(initialState) {
    on<TutorialthreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TutorialthreeInitialEvent event,
    Emitter<TutorialthreeState> emit,
  ) async {}
}
