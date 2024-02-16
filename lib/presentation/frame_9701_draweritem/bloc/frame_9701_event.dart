// ignore_for_file: must_be_immutable

part of 'frame_9701_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Frame9701 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class Frame9701Event extends Equatable {}

/// Event that is dispatched when the Frame9701 widget is first created.
class Frame9701InitialEvent extends Frame9701Event {
  @override
  List<Object?> get props => [];
}
