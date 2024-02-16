// ignore_for_file: must_be_immutable

part of 'android_large_ninetyeight_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLargeNinetyeight widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLargeNinetyeightEvent extends Equatable {}

/// Event that is dispatched when the AndroidLargeNinetyeight widget is first created.
class AndroidLargeNinetyeightInitialEvent extends AndroidLargeNinetyeightEvent {
  @override
  List<Object?> get props => [];
}
