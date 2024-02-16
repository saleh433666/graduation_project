// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [user_home_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class UserHomeModel extends Equatable {
  UserHomeModel() {}

  UserHomeModel copyWith() {
    return UserHomeModel();
  }

  @override
  List<Object?> get props => [];
}
