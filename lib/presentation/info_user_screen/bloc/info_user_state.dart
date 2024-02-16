// ignore_for_file: must_be_immutable

part of 'info_user_bloc.dart';

/// Represents the state of InfoUser in the application.
class InfoUserState extends Equatable {
  InfoUserState({this.infoUserModelObj});

  InfoUserModel? infoUserModelObj;

  @override
  List<Object?> get props => [
        infoUserModelObj,
      ];
  InfoUserState copyWith({InfoUserModel? infoUserModelObj}) {
    return InfoUserState(
      infoUserModelObj: infoUserModelObj ?? this.infoUserModelObj,
    );
  }
}
