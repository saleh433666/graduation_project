// ignore_for_file: must_be_immutable

part of 'android_large_114_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLarge114 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLarge114Event extends Equatable {}

/// Event that is dispatched when the AndroidLarge114 widget is first created.
class AndroidLarge114InitialEvent extends AndroidLarge114Event {
  @override
  List<Object?> get props => [];
}
