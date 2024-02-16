import 'package:graduation_project/localization/app_localization.dart';

import '../../core/app_export.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/navigator_service.dart';
import '../../core/utils/size_utils.dart';
import '../../core/utils/validation_functions.dart';
import '../../routes/app_routes.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/android_large_112_bloc.dart';
import 'models/android_large_112_model.dart';
import 'package:flutter/material.dart';


// ignore_for_file: must_be_immutable
class AndroidLarge112Screen extends StatelessWidget {
  AndroidLarge112Screen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLarge112Bloc>(
        create: (context) => AndroidLarge112Bloc(AndroidLarge112State(
            androidLarge112ModelObj: AndroidLarge112Model()))
          ..add(AndroidLarge112InitialEvent()),
        child: AndroidLarge112Screen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            height: 719.v,
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.h, vertical: 19.v),
                            child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  _buildFrame(context),
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: SizedBox(
                                          height: 180.v,
                                          width: 186.h,
                                          child: Stack(
                                              alignment: Alignment.bottomRight,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .img3dIllustration,
                                                    height: 180.v,
                                                    width: 186.h,
                                                    alignment:
                                                        Alignment.center),
                                                Align(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                bottom: 27.v),
                                                        child: SizedBox(
                                                            width: 110.h,
                                                            child: Divider(
                                                                color: appTheme
                                                                    .blueGray100,
                                                                endIndent:
                                                                    47.h))))
                                              ])))
                                ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 359.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgIconBlueGray900,
            margin: EdgeInsets.fromLTRB(26.h, 19.v, 324.h, 20.v)));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.only(top: 171.v),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("lbl_new_password".tr,
                      style: CustomTextStyles
                          .headlineMediumSegoeUIBluegray900Bold28),
                  SizedBox(height: 9.v),
                  BlocSelector<AndroidLarge112Bloc, AndroidLarge112State,
                          TextEditingController?>(
                      selector: (state) => state.newpasswordController,
                      builder: (context, newpasswordController) {
                        return CustomTextFormField(
                            controller: newpasswordController,
                            hintText: "lbl_passward".tr,
                            hintStyle: CustomTextStyles.titleSmallInter,
                            textInputType: TextInputType.visiblePassword,
                            validator: (value) {
                              if (value == null ||
                                  (!isValidPassword(value, isRequired: true))) {
                                return "err_msg_please_enter_valid_password".tr;
                              }
                              return null;
                            },
                            obscureText: true);
                      }),
                  SizedBox(height: 8.v),
                  BlocSelector<AndroidLarge112Bloc, AndroidLarge112State,
                          TextEditingController?>(
                      selector: (state) => state.confirmPasswordController,
                      builder: (context, confirmPasswordController) {
                        return CustomTextFormField(
                            controller: confirmPasswordController,
                            hintText: "msg_confirm_passward".tr,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.visiblePassword,
                            validator: (value) {
                              if (value == null ||
                                  (!isValidPassword(value, isRequired: true))) {
                                return "err_msg_please_enter_valid_password".tr;
                              }
                              return null;
                            },
                            obscureText: true);
                      }),
                  SizedBox(height: 24.v),
                  CustomElevatedButton(
                      text: "lbl_save".tr,
                      buttonStyle: CustomButtonStyles.outlineBlackTL8,
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(content: Center(child: Text('Success',style: TextStyle(color: Colors.white,fontSize: 25),)),backgroundColor: Colors.green,));
                        onTapSaveNew(context);
                      })
                ])));
  }

  /// Navigates to the androidLarge113Screen when the action is triggered.
  onTapSave(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.PassResetScreen,
    );
  }
  onTapSaveNew(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.SignInScreen,
    );
  }
}
