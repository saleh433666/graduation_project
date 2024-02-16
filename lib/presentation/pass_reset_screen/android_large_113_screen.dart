import 'package:graduation_project/core/utils/size_utils.dart';
import 'package:graduation_project/localization/app_localization.dart';

import '../../core/app_export.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/navigator_service.dart';
import '../../routes/app_routes.dart';
import '../../theme/custom_text_style.dart';
import '../../widgets/custom_image_view.dart';
import 'bloc/android_large_113_bloc.dart';
import 'models/android_large_113_model.dart';
import 'package:flutter/material.dart';

class AndroidLarge113Screen extends StatelessWidget {
  const AndroidLarge113Screen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLarge113Bloc>(
        create: (context) => AndroidLarge113Bloc(AndroidLarge113State(
            androidLarge113ModelObj: AndroidLarge113Model()))
          ..add(AndroidLarge113InitialEvent()),
        child: AndroidLarge113Screen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AndroidLarge113Bloc, AndroidLarge113State>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    Spacer(flex: 70),
                    CustomImageView(
                        imagePath: ImageConstant.imgSettings,
                        height: 80.adaptSize,
                        width: 80.adaptSize),
                    SizedBox(height: 16.v),
                    Text("lbl_password_reset".tr,
                        style:
                            CustomTextStyles.headlineMediumSegoeUIBluegray900),
                    SizedBox(height: 6.v),
                    GestureDetector(
                        onTap: () {
                          onTapTxtYourpasswordhas(context);
                        },
                        child: Container(
                            width: 294.h,
                            margin: EdgeInsets.symmetric(horizontal: 32.h),
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "msg_your_password_has2".tr,
                                      style:
                                          CustomTextStyles.titleSmallcc5a5a5a),
                                  TextSpan(text: " "),
                                  TextSpan(
                                      text: "lbl".tr,
                                      style:
                                          CustomTextStyles.bodyLargecc5a5a5a),
                                  TextSpan(text: " "),
                                  TextSpan(
                                      text: "lbl_back_to_sign_in".tr,
                                      style:
                                          CustomTextStyles.titleMediumcc333333)
                                ]),
                                textAlign: TextAlign.center))),
                    Spacer(flex: 29),
                    CustomImageView(
                        imagePath: ImageConstant.imgFun3dCartoonCow,
                        height: 177.v,
                        width: 242.h,
                        alignment: Alignment.centerLeft)
                  ]))));
    });
  }

  /// Navigates to the androidLarge107Screen when the action is triggered.
  onTapTxtYourpasswordhas(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.SignInScreen,
    );
  }
}
