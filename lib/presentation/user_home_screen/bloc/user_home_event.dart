// ignore_for_file: must_be_immutable

part of 'user_home_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///UserHome widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class UserHomeEvent extends Equatable {}

/// Event that is dispatched when the UserHome widget is first created.
class UserHomeInitialEvent extends UserHomeEvent {
  @override
  List<Object?> get props => [];
}
