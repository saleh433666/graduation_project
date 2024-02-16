// ignore_for_file: must_be_immutable

part of 'tutorialtwo_bloc.dart';

/// Represents the state of Tutorialtwo in the application.
class TutorialtwoState extends Equatable {
  TutorialtwoState({this.tutorialtwoModelObj});

  TutorialtwoModel? tutorialtwoModelObj;

  @override
  List<Object?> get props => [
        tutorialtwoModelObj,
      ];
  TutorialtwoState copyWith({TutorialtwoModel? tutorialtwoModelObj}) {
    return TutorialtwoState(
      tutorialtwoModelObj: tutorialtwoModelObj ?? this.tutorialtwoModelObj,
    );
  }
}
