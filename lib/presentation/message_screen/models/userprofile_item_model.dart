import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.doctorName,
    this.descriptionText,
    this.id,
  }) {
    doctorName = doctorName ?? "Doctor Name";
    descriptionText = descriptionText ?? "Few Description To Recipe";
    id = id ?? "";
  }

  String? doctorName;

  String? descriptionText;

  String? id;
}
