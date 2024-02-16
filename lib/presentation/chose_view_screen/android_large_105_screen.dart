import 'package:graduation_project/core/utils/size_utils.dart';
import 'package:graduation_project/localization/app_localization.dart';

import '../../core/app_export.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/navigator_service.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_button_style.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_image_view.dart';
import 'bloc/android_large_105_bloc.dart';
import 'models/android_large_105_model.dart';
import 'package:flutter/material.dart';

class AndroidLarge105Screen extends StatelessWidget {
  const AndroidLarge105Screen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLarge105Bloc>(
        create: (context) => AndroidLarge105Bloc(AndroidLarge105State(
            androidLarge105ModelObj: AndroidLarge105Model()))
          ..add(AndroidLarge105InitialEvent()),
        child: AndroidLarge105Screen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AndroidLarge105Bloc, AndroidLarge105State>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    SizedBox(height: 110.v),
                    Expanded(
                        child: SingleChildScrollView(
                            child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 36.h),
                                child: Column(children: [
                                  Text("lbl_welcome".tr,
                                      style: theme.textTheme.displayMedium),
                                  SizedBox(height: 54.v),
                                  SizedBox(
                                      height: 172.v,
                                      width: 152.h,
                                      child: InkWell(
                                        onTap: (){
                                          onTapWidget(context);
                                        },
                                        child: Stack(
                                            alignment: Alignment.bottomCenter,
                                            children: [
                                              Align(
                                                  alignment: Alignment.topCenter,
                                                  child: Container(
                                                      height: 149.v,
                                                      width: 152.h,
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 15.h,
                                                              vertical: 14.v),
                                                      decoration: AppDecoration
                                                          .fillGreen
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder16),
                                                      child: CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgVet1,
                                                          height: 121.adaptSize,
                                                          width: 121.adaptSize,
                                                          radius: BorderRadius
                                                              .circular(16.h),
                                                          alignment:
                                                              Alignment.center))),
                                              CustomElevatedButton(
                                                  height: 37.v,
                                                  width: 70.h,
                                                  text: "lbl_doctor".tr,
                                                  buttonStyle: CustomButtonStyles
                                                      .outlineBlackTL16,
                                                  buttonTextStyle:
                                                      CustomTextStyles
                                                          .titleMediumBluegray500,
                                                  alignment:
                                                      Alignment.bottomCenter)
                                            ]),
                                      )),
                                  SizedBox(height: 32.v),
                                  SizedBox(
                                      height: 172.v,
                                      width: 152.h,
                                      child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            Align(
                                                alignment: Alignment.topCenter,
                                                child: GestureDetector(
                                                    onTap: () {
                                                      onTapWidget(context);
                                                    },
                                                    child: Container(
                                                        height: 149.v,
                                                        width: 152.h,
                                                        padding:
                                                            EdgeInsets.symmetric(
                                                                horizontal: 15
                                                                    .h,
                                                                vertical: 14.v),
                                                        decoration: AppDecoration
                                                            .fillGreen
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder16),
                                                        child: CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgImage1,
                                                            height:
                                                                121.adaptSize,
                                                            width:
                                                                121.adaptSize,
                                                            radius: BorderRadius
                                                                .circular(16.h),
                                                            alignment: Alignment
                                                                .center)))),
                                            CustomElevatedButton(
                                                height: 37.v,
                                                width: 70.h,
                                                text: "lbl_visitor".tr,
                                                buttonStyle: CustomButtonStyles
                                                    .outlineBlackTL16,
                                                buttonTextStyle:
                                                    CustomTextStyles
                                                        .titleMediumBluegray500,
                                                alignment:
                                                    Alignment.bottomCenter)
                                          ])),
                                  SizedBox(height: 365.v),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("lbl_verify".tr,
                                          style: theme.textTheme.headlineLarge))
                                ]))))
                  ]))));
    });
  }

  /// Navigates to the doctorScreen when the action is triggered.
  onTapWidget(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.doctorScreen,
    );
  }
}
