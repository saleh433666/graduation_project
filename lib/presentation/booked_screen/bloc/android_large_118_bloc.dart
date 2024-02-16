import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../../../core/utils/image_constant.dart';
import '../models/android_large_118_model.dart';
import '/core/app_export.dart';
import '../models/userprofilelist1_item_model.dart';
part 'android_large_118_event.dart';
part 'android_large_118_state.dart';

/// A bloc that manages the state of a AndroidLarge118 according to the event that is dispatched to it.
class AndroidLarge118Bloc
    extends Bloc<AndroidLarge118Event, AndroidLarge118State> {
  AndroidLarge118Bloc(AndroidLarge118State initialState) : super(initialState) {
    on<AndroidLarge118InitialEvent>(_onInitialize);
  }

  List<Userprofilelist1ItemModel> fillUserprofilelist1ItemList() {
    return [
      Userprofilelist1ItemModel(
          doctorImage: ImageConstant.imgIcOutlineImage,
          doctorName: "Dr. Andrew",
          ratingImage: ImageConstant.imgStar13,
          ratingText: "4.0",
          degreeText: "M.B.B.S",
          feeText: "21",
          duration:
              "Dr. Andrew is an experienced dentist with over 10 years of practice. He specializes in general",
          available: "Available"),
      Userprofilelist1ItemModel(
          doctorImage: ImageConstant.imgIcOutlineImage57x54,
          doctorName: "Dr. Andrew",
          feeText: "40",
          duration:
              "Dr. Andrew is an experienced dentist with over 10 years of practice. He specializes in general",
          available: "Available"),
      Userprofilelist1ItemModel(
          doctorImage: ImageConstant.imgIcOutlineImage1,
          doctorName: "Dr. Andrew",
          feeText: "21",
          duration:
              "Dr. Andrew is an experienced dentist with over 10 years of practice. He specializes in general",
          available: "Available"),
      Userprofilelist1ItemModel(
          doctorImage: ImageConstant.imgIcOutlineImage2,
          doctorName: "Dr. Andrew",
          feeText: "21",
          duration:
              "Dr. Andrew is an experienced dentist with over 10 years of practice. He specializes in general",
          available: "Available")
    ];
  }

  _onInitialize(
    AndroidLarge118InitialEvent event,
    Emitter<AndroidLarge118State> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        androidLarge118ModelObj: state.androidLarge118ModelObj?.copyWith(
      userprofilelist1ItemList: fillUserprofilelist1ItemList(),
    )));
  }
}
