// ignore_for_file: must_be_immutable

part of 'android_large_seventyfour_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLargeSeventyfour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLargeSeventyfourEvent extends Equatable {}

/// Event that is dispatched when the AndroidLargeSeventyfour widget is first created.
class AndroidLargeSeventyfourInitialEvent extends AndroidLargeSeventyfourEvent {
  @override
  List<Object?> get props => [];
}
