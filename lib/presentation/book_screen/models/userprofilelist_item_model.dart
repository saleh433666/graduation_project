import '../../../core/app_export.dart';
import '../../../core/utils/image_constant.dart';

/// This class is used in the [userprofilelist_item_widget] screen.
class UserprofilelistItemModel {
  UserprofilelistItemModel({
    this.doctorImage,
    this.doctorName,
    this.ratingImage,
    this.ratingText,
    this.qualification,
    this.consultationFee,
    this.duration,
    this.id,
  }) {
    doctorImage = doctorImage ?? ImageConstant.imgIcOutlineImage;
    doctorName = doctorName ?? "Dr. Andrew";
    ratingImage = ratingImage ?? ImageConstant.imgStar1;
    ratingText = ratingText ?? "4.0";
    qualification = qualification ?? "M.B.B.S";
    consultationFee = consultationFee ?? "21";
    duration = duration ??
        "Dr. Andrew is an experienced dentist with over 10 years of practice. He specializes in general";
    id = id ?? "";
  }

  String? doctorImage;

  String? doctorName;

  String? ratingImage;

  String? ratingText;

  String? qualification;

  String? consultationFee;

  String? duration;

  String? id;
}
