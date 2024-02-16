import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../models/user_home_model.dart';
import '/core/app_export.dart';
part 'user_home_event.dart';
part 'user_home_state.dart';

/// A bloc that manages the state of a UserHome according to the event that is dispatched to it.
class UserHomeBloc extends Bloc<UserHomeEvent, UserHomeState> {
  UserHomeBloc(UserHomeState initialState) : super(initialState) {
    on<UserHomeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    UserHomeInitialEvent event,
    Emitter<UserHomeState> emit,
  ) async {}
}
