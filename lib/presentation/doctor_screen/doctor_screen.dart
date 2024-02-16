import 'package:graduation_project/core/utils/size_utils.dart';
import 'package:graduation_project/localization/app_localization.dart';

import '../../core/app_export.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/navigator_service.dart';
import '../../routes/app_routes.dart';
import '../../theme/custom_text_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_image_view.dart';
import 'bloc/doctor_bloc.dart';
import 'models/doctor_model.dart';
import 'package:flutter/material.dart';

class DoctorScreen extends StatelessWidget {
  const DoctorScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DoctorBloc>(
        create: (context) =>
            DoctorBloc(DoctorState(doctorModelObj: DoctorModel()))
              ..add(DoctorInitialEvent()),
        child: DoctorScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DoctorBloc, DoctorState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 16.v),
                  child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgGroup,
                        height: 65.v,
                        width: 153.h),
                    Spacer(),
                    Text("lbl_hey".tr,
                        style: CustomTextStyles.headlineMediumSegoeUIGreen900),
                    SizedBox(height: 4.v),
                    Text("msg_do_you_want_to_sign".tr,
                        style: CustomTextStyles.titleSmallSegoeUIGray500),
                    SizedBox(height: 31.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgF407f97e3d392f1,
                        height: 146.v,
                        width: 182.h),
                    SizedBox(height: 95.v),
                    CustomElevatedButton(
                        width: 193.h,
                        text: "lbl_sign_in".tr,
                        buttonStyle: CustomButtonStyles.outlineBlack,
                        buttonTextStyle:
                            CustomTextStyles.titleLargeGray5001Bold,
                        onPressed: () {
                          onTapSignIn(context);
                        }),
                    SizedBox(height: 13.v),
                    CustomElevatedButton(
                        width: 193.h,
                        text: "lbl_sign_up".tr,
                        buttonStyle: CustomButtonStyles.outlineBlack,
                        buttonTextStyle:
                            CustomTextStyles.titleLargeGray5001Bold,
                        onPressed: () {
                          onTapSignUp(context);
                        }),
                    SizedBox(height: 41.v)
                  ]))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 359.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgIcon,
            margin: EdgeInsets.fromLTRB(25.h, 19.v, 325.h, 20.v)));
  }

  /// Navigates to the androidLarge107Screen when the action is triggered.
  onTapSignIn(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.SignInScreen,
    );
  }

  /// Navigates to the androidLarge109Screen when the action is triggered.
  onTapSignUp(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.SingUpScreen,
    );
  }
}
