// ignore_for_file: must_be_immutable

part of 'android_large_101_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AndroidLarge101TabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AndroidLarge101TabContainerEvent extends Equatable {}

/// Event that is dispatched when the AndroidLarge101TabContainer widget is first created.
class AndroidLarge101TabContainerInitialEvent
    extends AndroidLarge101TabContainerEvent {
  @override
  List<Object?> get props => [];
}
