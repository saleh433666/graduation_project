// ignore_for_file: must_be_immutable

part of 'android_large_113_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLarge113 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLarge113Event extends Equatable {}

/// Event that is dispatched when the AndroidLarge113 widget is first created.
class AndroidLarge113InitialEvent extends AndroidLarge113Event {
  @override
  List<Object?> get props => [];
}
