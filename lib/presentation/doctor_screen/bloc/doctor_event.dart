// ignore_for_file: must_be_immutable

part of 'doctor_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Doctor widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DoctorEvent extends Equatable {}

/// Event that is dispatched when the Doctor widget is first created.
class DoctorInitialEvent extends DoctorEvent {
  @override
  List<Object?> get props => [];
}
