// ignore_for_file: must_be_immutable

part of 'user_home_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///UserHomeOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class UserHomeOneEvent extends Equatable {}

/// Event that is dispatched when the UserHomeOne widget is first created.
class UserHomeOneInitialEvent extends UserHomeOneEvent {
  @override
  List<Object?> get props => [];
}
