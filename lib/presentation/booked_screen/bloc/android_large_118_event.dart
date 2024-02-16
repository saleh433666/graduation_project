// ignore_for_file: must_be_immutable

part of 'android_large_118_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLarge118 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLarge118Event extends Equatable {}

/// Event that is dispatched when the AndroidLarge118 widget is first created.
class AndroidLarge118InitialEvent extends AndroidLarge118Event {
  @override
  List<Object?> get props => [];
}
