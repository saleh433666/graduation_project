// ignore_for_file: must_be_immutable

part of 'android_large_105_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLarge105 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLarge105Event extends Equatable {}

/// Event that is dispatched when the AndroidLarge105 widget is first created.
class AndroidLarge105InitialEvent extends AndroidLarge105Event {
  @override
  List<Object?> get props => [];
}
