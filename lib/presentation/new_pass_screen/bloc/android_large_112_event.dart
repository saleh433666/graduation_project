// ignore_for_file: must_be_immutable

part of 'android_large_112_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLarge112 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLarge112Event extends Equatable {}

/// Event that is dispatched when the AndroidLarge112 widget is first created.
class AndroidLarge112InitialEvent extends AndroidLarge112Event {
  @override
  List<Object?> get props => [];
}
