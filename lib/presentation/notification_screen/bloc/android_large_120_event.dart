// ignore_for_file: must_be_immutable

part of 'android_large_120_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLarge120 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLarge120Event extends Equatable {}

/// Event that is dispatched when the AndroidLarge120 widget is first created.
class AndroidLarge120InitialEvent extends AndroidLarge120Event {
  @override
  List<Object?> get props => [];
}
