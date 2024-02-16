import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../models/doctor_model.dart';
import '/core/app_export.dart';
part 'doctor_event.dart';
part 'doctor_state.dart';

/// A bloc that manages the state of a Doctor according to the event that is dispatched to it.
class DoctorBloc extends Bloc<DoctorEvent, DoctorState> {
  DoctorBloc(DoctorState initialState) : super(initialState) {
    on<DoctorInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DoctorInitialEvent event,
    Emitter<DoctorState> emit,
  ) async {}
}
