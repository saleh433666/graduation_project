// ignore_for_file: must_be_immutable

part of 'android_large_110_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLarge110 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLarge110Event extends Equatable {}

/// Event that is dispatched when the AndroidLarge110 widget is first created.
class AndroidLarge110InitialEvent extends AndroidLarge110Event {
  @override
  List<Object?> get props => [];
}
