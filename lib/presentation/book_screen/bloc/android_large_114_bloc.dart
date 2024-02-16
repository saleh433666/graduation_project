import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../../../core/utils/image_constant.dart';
import '../models/android_large_114_model.dart';
import '/core/app_export.dart';
import '../models/userprofilelist_item_model.dart';
part 'android_large_114_event.dart';
part 'android_large_114_state.dart';

/// A bloc that manages the state of a AndroidLarge114 according to the event that is dispatched to it.
class AndroidLarge114Bloc
    extends Bloc<AndroidLarge114Event, AndroidLarge114State> {
  AndroidLarge114Bloc(AndroidLarge114State initialState) : super(initialState) {
    on<AndroidLarge114InitialEvent>(_onInitialize);
  }

  List<UserprofilelistItemModel> fillUserprofilelistItemList() {
    return [
      UserprofilelistItemModel(
          doctorImage: ImageConstant.imgIcOutlineImage,
          doctorName: "Dr. Andrew",
          ratingImage: ImageConstant.imgStar1,
          ratingText: "4.0",
          qualification: "M.B.B.S",
          consultationFee: "21",
          duration:
              "Dr. Andrew is an experienced dentist with over 10 years of practice. He specializes in general"),
      UserprofilelistItemModel(
          doctorImage: ImageConstant.imgIcOutlineImage57x54,
          doctorName: "Dr. Andrew",
          ratingImage: ImageConstant.imgStar119x19,
          ratingText: "4.0",
          qualification: "M.B.B.S",
          consultationFee: "40",
          duration:
              "Dr. Andrew is an experienced dentist with over 10 years of practice. He specializes in general"),
      UserprofilelistItemModel(
          doctorImage: ImageConstant.imgIcOutlineImage1,
          doctorName: "Dr. Andrew",
          consultationFee: "21",
          duration:
              "Dr. Andrew is an experienced dentist with over 10 years of practice. He specializes in general"),
      UserprofilelistItemModel(
          doctorImage: ImageConstant.imgIcOutlineImage2,
          doctorName: "Dr. Andrew",
          ratingImage: ImageConstant.imgStar12,
          ratingText: "4.0",
          qualification: "M.B.B.S",
          consultationFee: "21",
          duration:
              "Dr. Andrew is an experienced dentist with over 10 years of practice. He specializes in general")
    ];
  }

  _onInitialize(
    AndroidLarge114InitialEvent event,
    Emitter<AndroidLarge114State> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        androidLarge114ModelObj: state.androidLarge114ModelObj?.copyWith(
            userprofilelistItemList: fillUserprofilelistItemList())));
  }
}
