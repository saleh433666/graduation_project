// ignore_for_file: must_be_immutable

part of 'android_large_101_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLarge101 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLarge101Event extends Equatable {}

/// Event that is dispatched when the AndroidLarge101 widget is first created.
class AndroidLarge101InitialEvent extends AndroidLarge101Event {
  @override
  List<Object?> get props => [];
}
