// ignore_for_file: must_be_immutable

part of 'tutorialthree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Tutorialthree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TutorialthreeEvent extends Equatable {}

/// Event that is dispatched when the Tutorialthree widget is first created.
class TutorialthreeInitialEvent extends TutorialthreeEvent {
  @override
  List<Object?> get props => [];
}
