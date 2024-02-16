// ignore_for_file: must_be_immutable

part of 'user_edit_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///UserEdit widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class UserEditEvent extends Equatable {}

/// Event that is dispatched when the UserEdit widget is first created.
class UserEditInitialEvent extends UserEditEvent {
  @override
  List<Object?> get props => [];
}
