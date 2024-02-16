// ignore_for_file: must_be_immutable

part of 'tutorialthree_bloc.dart';

/// Represents the state of Tutorialthree in the application.
class TutorialthreeState extends Equatable {
  TutorialthreeState({this.tutorialthreeModelObj});

  TutorialthreeModel? tutorialthreeModelObj;

  @override
  List<Object?> get props => [
        tutorialthreeModelObj,
      ];
  TutorialthreeState copyWith({TutorialthreeModel? tutorialthreeModelObj}) {
    return TutorialthreeState(
      tutorialthreeModelObj:
          tutorialthreeModelObj ?? this.tutorialthreeModelObj,
    );
  }
}
