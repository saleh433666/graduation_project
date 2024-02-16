// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'userprofile_item_model.dart';

/// This class defines the variables used in the [android_large_124_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AndroidLarge124Model extends Equatable {
  AndroidLarge124Model({this.userprofileItemList = const []}) {}

  List<UserprofileItemModel> userprofileItemList;

  AndroidLarge124Model copyWith(
      {List<UserprofileItemModel>? userprofileItemList}) {
    return AndroidLarge124Model(
      userprofileItemList: userprofileItemList ?? this.userprofileItemList,
    );
  }

  @override
  List<Object?> get props => [userprofileItemList];
}
