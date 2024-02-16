// ignore_for_file: must_be_immutable

part of 'android_large_111_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLarge111 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLarge111Event extends Equatable {}

/// Event that is dispatched when the AndroidLarge111 widget is first created.
class AndroidLarge111InitialEvent extends AndroidLarge111Event {
  @override
  List<Object?> get props => [];
}
