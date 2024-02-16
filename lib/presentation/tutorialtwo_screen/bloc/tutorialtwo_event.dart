// ignore_for_file: must_be_immutable

part of 'tutorialtwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Tutorialtwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TutorialtwoEvent extends Equatable {}

/// Event that is dispatched when the Tutorialtwo widget is first created.
class TutorialtwoInitialEvent extends TutorialtwoEvent {
  @override
  List<Object?> get props => [];
}
