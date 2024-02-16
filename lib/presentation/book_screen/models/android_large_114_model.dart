// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'userprofilelist_item_model.dart';

/// This class defines the variables used in the [android_large_114_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AndroidLarge114Model extends Equatable {
  AndroidLarge114Model({this.userprofilelistItemList = const []}) {}

  List<UserprofilelistItemModel> userprofilelistItemList;

  AndroidLarge114Model copyWith(
      {List<UserprofilelistItemModel>? userprofilelistItemList}) {
    return AndroidLarge114Model(
      userprofilelistItemList:
          userprofilelistItemList ?? this.userprofilelistItemList,
    );
  }

  @override
  List<Object?> get props => [userprofilelistItemList];
}
