// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [info_user_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class InfoUserModel extends Equatable {
  InfoUserModel() {}

  InfoUserModel copyWith() {
    return InfoUserModel();
  }

  @override
  List<Object?> get props => [];
}
