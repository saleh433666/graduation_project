// ignore_for_file: must_be_immutable

part of 'info_user_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InfoUser widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InfoUserEvent extends Equatable {}

/// Event that is dispatched when the InfoUser widget is first created.
class InfoUserInitialEvent extends InfoUserEvent {
  @override
  List<Object?> get props => [];
}
