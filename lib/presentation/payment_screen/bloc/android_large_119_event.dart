// ignore_for_file: must_be_immutable

part of 'android_large_119_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLarge119 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLarge119Event extends Equatable {}

/// Event that is dispatched when the AndroidLarge119 widget is first created.
class AndroidLarge119InitialEvent extends AndroidLarge119Event {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends AndroidLarge119Event {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
