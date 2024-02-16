import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../models/frame_9701_model.dart';
import '/core/app_export.dart';
part 'frame_9701_event.dart';
part 'frame_9701_state.dart';

/// A bloc that manages the state of a Frame9701 according to the event that is dispatched to it.
class Frame9701Bloc extends Bloc<Frame9701Event, Frame9701State> {
  Frame9701Bloc(Frame9701State initialState) : super(initialState) {
    on<Frame9701InitialEvent>(_onInitialize);
  }

  _onInitialize(
    Frame9701InitialEvent event,
    Emitter<Frame9701State> emit,
  ) async {}
}
