import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../models/user_home_one_model.dart';
import '/core/app_export.dart';
part 'user_home_one_event.dart';
part 'user_home_one_state.dart';

/// A bloc that manages the state of a UserHomeOne according to the event that is dispatched to it.
class UserHomeOneBloc extends Bloc<UserHomeOneEvent, UserHomeOneState> {
  UserHomeOneBloc(UserHomeOneState initialState) : super(initialState) {
    on<UserHomeOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    UserHomeOneInitialEvent event,
    Emitter<UserHomeOneState> emit,
  ) async {}
}
