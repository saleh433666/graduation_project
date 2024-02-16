import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../models/frame_1000002323_model.dart';
import '/core/app_export.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
part 'frame_1000002323_event.dart';
part 'frame_1000002323_state.dart';

/// A bloc that manages the state of a Frame1000002323 according to the event that is dispatched to it.
class Frame1000002323Bloc
    extends Bloc<Frame1000002323Event, Frame1000002323State> {
  Frame1000002323Bloc(Frame1000002323State initialState) : super(initialState) {
    on<Frame1000002323InitialEvent>(_onInitialize);
  }

  _onInitialize(
    Frame1000002323InitialEvent event,
    Emitter<Frame1000002323State> emit,
  ) async {}
}
