// ignore_for_file: must_be_immutable

part of 'tutorialone_bloc.dart';

/// Represents the state of Tutorialone in the application.
class TutorialoneState extends Equatable {
  TutorialoneState({this.tutorialoneModelObj});

  TutorialoneModel? tutorialoneModelObj;

  @override
  List<Object?> get props => [
        tutorialoneModelObj,
      ];
  TutorialoneState copyWith({TutorialoneModel? tutorialoneModelObj}) {
    return TutorialoneState(
      tutorialoneModelObj: tutorialoneModelObj ?? this.tutorialoneModelObj,
    );
  }
}
