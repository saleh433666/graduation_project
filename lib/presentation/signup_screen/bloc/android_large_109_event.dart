// ignore_for_file: must_be_immutable

part of 'android_large_109_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLarge109 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLarge109Event extends Equatable {}

/// Event that is dispatched when the AndroidLarge109 widget is first created.
class AndroidLarge109InitialEvent extends AndroidLarge109Event {
  @override
  List<Object?> get props => [];
}
