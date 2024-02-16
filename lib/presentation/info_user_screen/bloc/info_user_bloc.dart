import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../models/info_user_model.dart';
import '/core/app_export.dart';
part 'info_user_event.dart';
part 'info_user_state.dart';

/// A bloc that manages the state of a InfoUser according to the event that is dispatched to it.
class InfoUserBloc extends Bloc<InfoUserEvent, InfoUserState> {
  InfoUserBloc(InfoUserState initialState) : super(initialState) {
    on<InfoUserInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InfoUserInitialEvent event,
    Emitter<InfoUserState> emit,
  ) async {}
}
