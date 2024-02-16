import 'package:graduation_project/core/utils/size_utils.dart';
import 'package:graduation_project/localization/app_localization.dart';

import '../../core/app_export.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/navigator_service.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_image_view.dart';
import 'bloc/user_home_one_bloc.dart';
import 'models/user_home_one_model.dart';
import 'package:flutter/material.dart';

class UserHomeOneScreen extends StatelessWidget {
  const UserHomeOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<UserHomeOneBloc>(
        create: (context) => UserHomeOneBloc(
            UserHomeOneState(userHomeOneModelObj: UserHomeOneModel()))
          ..add(UserHomeOneInitialEvent()),
        child: UserHomeOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserHomeOneBloc, UserHomeOneState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.whiteA700,
              body: SizedBox(
                  width: double.maxFinite,
                  child: Padding(
                      padding: EdgeInsets.only(right: 24.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12.h, vertical: 56.v),
                                decoration: AppDecoration.fillBluegray60002
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder16),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgGrid,
                                          height: 32.adaptSize,
                                          width: 32.adaptSize,
                                          alignment: Alignment.centerLeft),
                                      Spacer(flex: 43),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgLock,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize),
                                      SizedBox(height: 70.v),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgUser,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize,
                                          onTap: () {
                                            onTapImgUser(context);
                                          }),
                                      SizedBox(height: 70.v),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgOutlineStatus,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize),
                                      SizedBox(height: 70.v),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgProfileGray5001,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize),
                                      SizedBox(height: 70.v),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgArrowRight,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize),
                                      Spacer(flex: 56)
                                    ])),
                            Expanded(
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 30.h, bottom: 32.v),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgTablerLineScan,
                                              height: 24.adaptSize,
                                              width: 24.adaptSize,
                                              margin:
                                                  EdgeInsets.only(left: 17.h)),
                                          SizedBox(height: 5.v),
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Container(
                                                  width: 203.h,
                                                  margin: EdgeInsets.only(
                                                      left: 44.h),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text("lbl_subject".tr,
                                                            style: CustomTextStyles
                                                                .headlineMediumBluegray900),
                                                        Container(
                                                            width: 28.adaptSize,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    bottom:
                                                                        3.v),
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        4.h,
                                                                    vertical:
                                                                        5.v),
                                                            decoration: AppDecoration
                                                                .outlineBlueGray
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder4),
                                                            child: Text(
                                                                "lbl_en".tr,
                                                                style: CustomTextStyles
                                                                    .titleSmallBluegray60001))
                                                      ]))),
                                          SizedBox(height: 22.v),
                                          SizedBox(
                                              height: 215.v,
                                              width: 219.h,
                                              child: Stack(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgRectangle722,
                                                        height: 215.v,
                                                        width: 219.h,
                                                        radius: BorderRadius
                                                            .circular(16.h),
                                                        alignment:
                                                            Alignment.center,
                                                        onTap: () {
                                                          onTapImgImage(
                                                              context);
                                                        }),
                                                    Align(
                                                        alignment: Alignment
                                                            .bottomRight,
                                                        child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 59.h,
                                                                    right: 46.h,
                                                                    bottom: 7
                                                                        .v),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgCheckmark,
                                                                      height: 100
                                                                          .adaptSize,
                                                                      width: 100
                                                                          .adaptSize),
                                                                  SizedBox(
                                                                      height:
                                                                          17.v),
                                                                  Text(
                                                                      "lbl_schedule"
                                                                          .tr,
                                                                      style: theme
                                                                          .textTheme
                                                                          .headlineMedium)
                                                                ])))
                                                  ])),
                                          SizedBox(height: 28.v),
                                          SizedBox(
                                              height: 205.v,
                                              width: 219.h,
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgRectangle723,
                                                        height: 205.v,
                                                        width: 219.h,
                                                        radius: BorderRadius
                                                            .circular(16.h),
                                                        alignment:
                                                            Alignment.center,
                                                        onTap: () {
                                                          onTapImgImage1(
                                                              context);
                                                        }),
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Padding(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        36.h),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgTelevision,
                                                                      height: 100
                                                                          .adaptSize,
                                                                      width: 100
                                                                          .adaptSize),
                                                                  SizedBox(
                                                                      height:
                                                                          16.v),
                                                                  SizedBox(
                                                                      width:
                                                                          147.h,
                                                                      child: Text(
                                                                          "msg_scan_cow_radiology"
                                                                              .tr,
                                                                          maxLines:
                                                                              2,
                                                                          overflow: TextOverflow
                                                                              .ellipsis,
                                                                          textAlign: TextAlign
                                                                              .center,
                                                                          style:
                                                                              CustomTextStyles.headlineMedium27_1))
                                                                ])))
                                                  ])),
                                          SizedBox(height: 18.v),
                                          SizedBox(
                                              height: 215.v,
                                              width: 219.h,
                                              child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgRectangle724,
                                                        height: 215.v,
                                                        width: 219.h,
                                                        radius: BorderRadius
                                                            .circular(16.h),
                                                        alignment:
                                                            Alignment.center),
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Padding(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        59.h),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgTelevisionWhiteA700,
                                                                      height: 100
                                                                          .adaptSize,
                                                                      width: 100
                                                                          .adaptSize),
                                                                  SizedBox(
                                                                      height:
                                                                          33.v),
                                                                  Text(
                                                                      "lbl_recipes"
                                                                          .tr,
                                                                      style: CustomTextStyles
                                                                          .headlineMedium27)
                                                                ])))
                                                  ]))
                                        ])))
                          ])))));
    });
  }

  /// Navigates to the androidLarge124Screen when the action is triggered.
  onTapImgUser(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.MessageScreen,
    );
  }

  /// Navigates to the frame1000002323Screen when the action is triggered.
  onTapImgImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.CalenderScreen,
    );
  }

  /// Navigates to the androidLargeSeventyfourScreen when the action is triggered.
  onTapImgImage1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.ScanScreen,
    );
  }
}
