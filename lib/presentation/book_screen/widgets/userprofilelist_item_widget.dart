import 'package:graduation_project/core/utils/size_utils.dart';
import 'package:graduation_project/localization/app_localization.dart';

import '../../../theme/app_decoration.dart';
import '../../../theme/custom_text_style.dart';
import '../../../theme/theme_helper.dart';
import '../../../widgets/custom_image_view.dart';
import '../../../widgets/custom_outlined_button.dart';
import '../models/userprofilelist_item_model.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  UserprofilelistItemWidget(
    this.userprofilelistItemModelObj, {
    Key? key,
    this.onTapUserProfile,
  }) : super(
          key: key,
        );

  UserprofilelistItemModel userprofilelistItemModelObj;

  VoidCallback? onTapUserProfile;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillBluegray50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 1.h,
              right: 10.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: userprofilelistItemModelObj?.doctorImage,
                  height: 57.v,
                  width: 54.h,
                  radius: BorderRadius.circular(
                    27.h,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 21.h,
                      bottom: 10.v,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              userprofilelistItemModelObj.doctorName!,
                              style:
                                  CustomTextStyles.titleMediumInterBluegray900,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                  imagePath:
                                      userprofilelistItemModelObj?.ratingImage,
                                  height: 19.adaptSize,
                                  width: 19.adaptSize,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child: Text(
                                    userprofilelistItemModelObj.ratingText!,
                                    style: CustomTextStyles
                                        .titleMediumBluegray900Medium,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 7.v),
                              child: Text(
                                userprofilelistItemModelObj.qualification!,
                                style: CustomTextStyles.labelLargeInterGray600,
                              ),
                            ),
                            Text(
                              userprofilelistItemModelObj.consultationFee!,
                              style: CustomTextStyles.titleMediumBluegray900,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 1.v),
          Container(
            width: 233.h,
            margin: EdgeInsets.only(
              left: 77.h,
              right: 13.h,
            ),
            child: Text(
              userprofilelistItemModelObj.duration!,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 3.v),
          CustomOutlinedButton(
            text: "lbl_book".tr,
            margin: EdgeInsets.only(right: 6.h),
            onPressed: () {
              onTapUserProfile!.call();
            },
          ),
          SizedBox(height: 13.v),
        ],
      ),
    );
  }
}
