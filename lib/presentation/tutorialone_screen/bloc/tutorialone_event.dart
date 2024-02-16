// ignore_for_file: must_be_immutable

part of 'tutorialone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Tutorialone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TutorialoneEvent extends Equatable {}

/// Event that is dispatched when the Tutorialone widget is first created.
class TutorialoneInitialEvent extends TutorialoneEvent {
  @override
  List<Object?> get props => [];
}
