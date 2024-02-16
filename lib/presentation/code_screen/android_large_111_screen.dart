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
import '../../widgets/custom_text_form_field.dart';
import 'bloc/android_large_111_bloc.dart';
import 'models/android_large_111_model.dart';
import 'package:flutter/material.dart';


class AndroidLarge111Screen extends StatelessWidget {
   AndroidLarge111Screen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLarge111Bloc>(
        create: (context) => AndroidLarge111Bloc(AndroidLarge111State(
            androidLarge111ModelObj: AndroidLarge111Model()))
          ..add(AndroidLarge111InitialEvent()),
        child: AndroidLarge111Screen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(
              key: _formKey,
              child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(left: 20.h, top: 82.v, right: 20.h),
                  child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgForgotPassword,
                        height: 159.adaptSize,
                        width: 159.adaptSize),
                    SizedBox(height: 48.v),
                    BlocSelector<AndroidLarge111Bloc, AndroidLarge111State,
                            TextEditingController?>(
                        selector: (state) => state.enterCodeController,
                        builder: (context, enterCodeController) {
                          return CustomTextFormField(
                              controller: enterCodeController,
                              hintText: "lbl_enter_code".tr,
                              textInputAction: TextInputAction.done);
                        }),
                    SizedBox(height: 16.v),
                    CustomElevatedButton(
                        text: "lbl_confirm".tr,
                        buttonStyle: CustomButtonStyles.outlineBlackTL8,
                        onPressed: () {
                          if(_formKey.currentState!.validate()){
                            onTapConfirm(context);
                          }
                        }),
                    SizedBox(height: 24.v),
                    Text("lbl_re_send_code".tr,
                        style: CustomTextStyles.titleMediumGray700Medium
                            .copyWith(decoration: TextDecoration.underline)),
                    SizedBox(height: 5.v)
                  ])),
            )));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 359.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgIconBlueGray900,
            margin: EdgeInsets.fromLTRB(28.h, 19.v, 322.h, 20.v)));
  }

  /// Navigates to the androidLarge112Screen when the action is triggered.
  onTapConfirm(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.NewPassScreen,
    );
  }
}
