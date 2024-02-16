import 'package:graduation_project/core/utils/size_utils.dart';
import 'package:graduation_project/localization/app_localization.dart';

import '../../../theme/app_decoration.dart';
import '../../../theme/custom_text_style.dart';
import '../../../theme/theme_helper.dart';
import '../../../widgets/custom_elevated_button.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/userprofilelist1_item_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Userprofilelist1ItemWidget extends StatelessWidget {
  Userprofilelist1ItemWidget(
    this.userprofilelist1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofilelist1ItemModel userprofilelist1ItemModelObj;

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
                  imagePath: userprofilelist1ItemModelObj?.doctorImage,
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
                              userprofilelist1ItemModelObj.doctorName!,
                              style:
                                  CustomTextStyles.titleMediumInterBluegray900,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                  imagePath:
                                      userprofilelist1ItemModelObj?.ratingImage,
                                  height: 19.adaptSize,
                                  width: 19.adaptSize,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child: Text(
                                    userprofilelist1ItemModelObj.ratingText!,
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
                                userprofilelist1ItemModelObj.degreeText!,
                                style: CustomTextStyles.labelLargeInterGray600,
                              ),
                            ),
                            Text(
                              userprofilelist1ItemModelObj.feeText!,
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
              userprofilelist1ItemModelObj.duration!,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 3.v),
          Container(
            height: 43.v,
            width: 318.h,
            margin: EdgeInsets.only(right: 6.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 99.h,
                      top: 8.v,
                    ),
                    child: Text(
                      userprofilelist1ItemModelObj.available!,
                      style: CustomTextStyles.labelLargeInterWhiteA700,
                    ),
                  ),
                ),
                CustomElevatedButton(
                  height: 43.v,
                  width: 318.h,
                  text: "lbl_booked".tr,
                  buttonTextStyle: CustomTextStyles.titleLargeWhiteA700_1,
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
          SizedBox(height: 13.v),
        ],
      ),
    );
  }
}
