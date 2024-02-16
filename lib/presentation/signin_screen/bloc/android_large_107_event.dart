// ignore_for_file: must_be_immutable

part of 'android_large_107_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLarge107 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLarge107Event extends Equatable {}

/// Event that is dispatched when the AndroidLarge107 widget is first created.
class AndroidLarge107InitialEvent extends AndroidLarge107Event {
  @override
  List<Object?> get props => [];
}
