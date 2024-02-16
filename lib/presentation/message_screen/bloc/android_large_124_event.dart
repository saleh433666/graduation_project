// ignore_for_file: must_be_immutable

part of 'android_large_124_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLarge124 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLarge124Event extends Equatable {}

/// Event that is dispatched when the AndroidLarge124 widget is first created.
class AndroidLarge124InitialEvent extends AndroidLarge124Event {
  @override
  List<Object?> get props => [];
}
