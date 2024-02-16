// ignore_for_file: must_be_immutable

part of 'user_home_one_bloc.dart';

/// Represents the state of UserHomeOne in the application.
class UserHomeOneState extends Equatable {
  UserHomeOneState({this.userHomeOneModelObj});

  UserHomeOneModel? userHomeOneModelObj;

  @override
  List<Object?> get props => [
        userHomeOneModelObj,
      ];
  UserHomeOneState copyWith({UserHomeOneModel? userHomeOneModelObj}) {
    return UserHomeOneState(
      userHomeOneModelObj: userHomeOneModelObj ?? this.userHomeOneModelObj,
    );
  }
}
