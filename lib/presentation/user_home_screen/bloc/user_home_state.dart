// ignore_for_file: must_be_immutable

part of 'user_home_bloc.dart';

/// Represents the state of UserHome in the application.
class UserHomeState extends Equatable {
  UserHomeState({this.userHomeModelObj});

  UserHomeModel? userHomeModelObj;

  @override
  List<Object?> get props => [
        userHomeModelObj,
      ];
  UserHomeState copyWith({UserHomeModel? userHomeModelObj}) {
    return UserHomeState(
      userHomeModelObj: userHomeModelObj ?? this.userHomeModelObj,
    );
  }
}
