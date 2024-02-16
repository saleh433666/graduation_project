import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../models/android_large_124_model.dart';
import '/core/app_export.dart';
import '../models/userprofile_item_model.dart';
part 'android_large_124_event.dart';
part 'android_large_124_state.dart';

/// A bloc that manages the state of a AndroidLarge124 according to the event that is dispatched to it.
class AndroidLarge124Bloc
    extends Bloc<AndroidLarge124Event, AndroidLarge124State> {
  AndroidLarge124Bloc(AndroidLarge124State initialState) : super(initialState) {
    on<AndroidLarge124InitialEvent>(_onInitialize);
  }

  _onInitialize(
    AndroidLarge124InitialEvent event,
    Emitter<AndroidLarge124State> emit,
  ) async {
    emit(state.copyWith(
        androidLarge124ModelObj: state.androidLarge124ModelObj
            ?.copyWith(userprofileItemList: fillUserprofileItemList())));
  }

  List<UserprofileItemModel> fillUserprofileItemList() {
    return [
      UserprofileItemModel(
          doctorName: "Doctor Name",
          descriptionText: "Few Description To Recipe"),
      UserprofileItemModel(
          doctorName: "Doctor Name",
          descriptionText: "Few Description To Recipe"),
      UserprofileItemModel(
          doctorName: "Doctor Name",
          descriptionText: "Few Description To Recipe"),
      UserprofileItemModel(
          doctorName: "Doctor Name",
          descriptionText: "Few Description To Recipe"),
      UserprofileItemModel(
          doctorName: "Doctor Name",
          descriptionText: "Few Description To Recipe"),
      UserprofileItemModel(
          doctorName: "Doctor Name",
          descriptionText: "Few Description To Recipe"),
      UserprofileItemModel(
          doctorName: "Doctor Name",
          descriptionText: "Few Description To Recipe"),
      UserprofileItemModel(
          doctorName: "Doctor Name",
          descriptionText: "Few Description To Recipe"),
      UserprofileItemModel(
          doctorName: "Doctor Name",
          descriptionText: "Few Description To Recipe"),
      UserprofileItemModel(
          doctorName: "Doctor Name",
          descriptionText: "Few Description To Recipe")
    ];
  }
}
