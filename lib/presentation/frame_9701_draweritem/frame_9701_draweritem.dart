import 'package:graduation_project/core/utils/size_utils.dart';
import 'package:graduation_project/localization/app_localization.dart';

import '../../core/utils/image_constant.dart';
import '../../core/utils/navigator_service.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_image_view.dart';
import 'bloc/frame_9701_bloc.dart';
import 'package:flutter/material.dart';

class Frame9701Draweritem extends StatelessWidget {
  const Frame9701Draweritem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
            width: 241.h,
            padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 19.v),
            decoration: AppDecoration.gradientPrimaryToPrimary,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgClose,
                      height: 32.v,
                      width: 25.h,
                      radius:
                          BorderRadius.horizontal(right: Radius.circular(20.h)),
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(left: 196.h, right: 1.h)),
                  SizedBox(height: 17.v),
                  _buildDoctorProfile(context),
                  SizedBox(height: 22.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                          width: 221.h,
                          child: Divider(
                              color: appTheme.whiteA700.withOpacity(0.5),
                              indent: 63.h,
                              endIndent: 40.h))),
                  SizedBox(height: 33.v),
                  Padding(
                      padding: EdgeInsets.only(left: 23.h, right: 108.h),
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgLock,
                            height: 24.adaptSize,
                            width: 24.adaptSize),
                        Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Text("lbl_profile".tr,
                                style: CustomTextStyles.titleLargeGray5001_1))
                      ])),
                  SizedBox(height: 57.v),
                  GestureDetector(
                      onTap: () {
                        onTapFrame(context);
                      },
                      child: Padding(
                          padding: EdgeInsets.only(left: 23.h, right: 121.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgUser,
                                height: 24.adaptSize,
                                width: 24.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(left: 12.h),
                                child: Text("lbl_chat".tr,
                                    style: CustomTextStyles
                                        .titleLargeGray5001SemiBold))
                          ]))),
                  SizedBox(height: 60.v),
                  Padding(
                      padding: EdgeInsets.only(left: 23.h, right: 53.h),
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgOutlineStatus,
                            height: 24.adaptSize,
                            width: 24.adaptSize),
                        Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Text("lbl_notification".tr,
                                style: CustomTextStyles.titleLargeGray5001))
                      ])),
                  SizedBox(height: 60.v),
                  Padding(
                      padding: EdgeInsets.only(left: 23.h, right: 130.h),
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgProfileGray5001,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(bottom: 1.v)),
                        Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Text("lbl_faq".tr,
                                style: CustomTextStyles
                                    .titleLargeGray5001SemiBold))
                      ])),
                  SizedBox(height: 56.v),
                  Padding(
                      padding: EdgeInsets.only(left: 23.h, right: 104.h),
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgArrowRight,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            margin: EdgeInsets.only(bottom: 1.v)),
                        Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Text("lbl_logout".tr,
                                style: CustomTextStyles
                                    .titleLargeGray5001SemiBold))
                      ])),
                  SizedBox(height: 5.v)
                ])));
  }

  /// Section Widget
  Widget _buildDoctorProfile(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(left: 26.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgEllipse109,
                  height: 60.adaptSize,
                  width: 60.adaptSize,
                  radius: BorderRadius.circular(30.h)),
              Padding(
                  padding: EdgeInsets.only(left: 23.h, top: 4.v, bottom: 5.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_doctor_name".tr,
                            style: CustomTextStyles.titleMediumGray5001),
                        SizedBox(height: 5.v),
                        Container(
                            width: 75.h,
                            margin: EdgeInsets.only(left: 16.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 6.h, vertical: 2.v),
                            decoration: AppDecoration.outlineGray.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder8),
                            child: Text("lbl_edit_profile".tr,
                                style: CustomTextStyles.labelLargeGray5001))
                      ]))
            ])));
  }

  /// Navigates to the androidLarge124Screen when the action is triggered.
  onTapFrame(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.MessageScreen,
    );
  }
}
