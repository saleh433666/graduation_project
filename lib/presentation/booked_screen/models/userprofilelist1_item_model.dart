import '../../../core/app_export.dart';
import '../../../core/utils/image_constant.dart';

/// This class is used in the [userprofilelist1_item_widget] screen.
class Userprofilelist1ItemModel {
  Userprofilelist1ItemModel({
    this.doctorImage,
    this.doctorName,
    this.ratingImage,
    this.ratingText,
    this.degreeText,
    this.feeText,
    this.duration,
    this.available,
    this.id,
  }) {
    doctorImage = doctorImage ?? ImageConstant.imgIcOutlineImage;
    doctorName = doctorName ?? "Dr. Andrew";
    ratingImage = ratingImage ?? ImageConstant.imgStar13;
    ratingText = ratingText ?? "4.0";
    degreeText = degreeText ?? "M.B.B.S";
    feeText = feeText ?? "21";
    duration = duration ??
        "Dr. Andrew is an experienced dentist with over 10 years of practice. He specializes in general";
    available = available ?? "Available";
    id = id ?? "";
  }

  String? doctorImage;

  String? doctorName;

  String? ratingImage;

  String? ratingText;

  String? degreeText;

  String? feeText;

  String? duration;

  String? available;

  String? id;
}
