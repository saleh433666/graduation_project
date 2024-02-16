// ignore_for_file: must_be_immutable

part of 'android_large_115_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLarge115 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLarge115Event extends Equatable {}

/// Event that is dispatched when the AndroidLarge115 widget is first created.
class AndroidLarge115InitialEvent extends AndroidLarge115Event {
  @override
  List<Object?> get props => [];
}
