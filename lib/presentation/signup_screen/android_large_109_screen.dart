import 'package:graduation_project/localization/app_localization.dart';

import '../../core/app_export.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/navigator_service.dart';
import '../../core/utils/size_utils.dart';
import '../../core/utils/validation_functions.dart';
import '../../routes/app_routes.dart';
import '../../theme/custom_button_style.dart';
import '../../theme/custom_text_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/android_large_109_bloc.dart';
import 'models/android_large_109_model.dart';
import 'package:flutter/material.dart';


// ignore_for_file: must_be_immutable
class AndroidLarge109Screen extends StatelessWidget {
  AndroidLarge109Screen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLarge109Bloc>(
        create: (context) => AndroidLarge109Bloc(AndroidLarge109State(
            androidLarge109ModelObj: AndroidLarge109Model()))
          ..add(AndroidLarge109InitialEvent()),
        child: AndroidLarge109Screen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(vertical: 32.v),
                            child: Column(children: [
                              _buildArrowLeftRow(context),
                              SizedBox(height: 3.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 20.h),
                                      child: Text("lbl_sign_up2".tr,
                                          style: CustomTextStyles
                                              .headlineMediumSegoeUIBluegray900Bold))),
                              SizedBox(height: 14.v),
                              _buildFrame(context),
                              SizedBox(height: 8.v),
                              _buildEmailEditText(context),
                              SizedBox(height: 8.v),
                              _buildPhoneNumberEditText(context),
                              SizedBox(height: 8.v),
                              _buildPasswordEditText(context),
                              SizedBox(height: 8.v),
                              _buildConfirmPasswordEditText(context),
                              SizedBox(height: 8.v),
                              _buildNationalIdEditText(context),
                              SizedBox(height: 24.v),
                              _buildSignUpButton(context),
                              SizedBox(height: 24.v),
                              GestureDetector(
                                  onTap: () {

                                      onTapSignUpButton(context);

                                  },
                                  child: Text("msg_already_i_have_account".tr,
                                      style: CustomTextStyles
                                          .titleSmallGray700SemiBold
                                          .copyWith(
                                              decoration:
                                                  TextDecoration.underline))),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  Widget _buildArrowLeftRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgArrowLeft,
                  height: 42.adaptSize,
                  width: 42.adaptSize,
                  margin: EdgeInsets.only(bottom: 110.v),
                  onTap: () {
                    onTapImgArrowLeft(context);
                  }),
              CustomImageView(
                  imagePath: ImageConstant.imgImage2,
                  height: 140.v,
                  width: 225.h,
                  margin: EdgeInsets.only(top: 12.v))
            ]));
  }

  /// Section Widget
  Widget _buildFirstNameEditText(BuildContext context) {
    return BlocSelector<AndroidLarge109Bloc, AndroidLarge109State,
            TextEditingController?>(
        selector: (state) => state.firstNameEditTextController,
        builder: (context, firstNameEditTextController) {
          return CustomTextFormField(
              width: 152.h,
              controller: firstNameEditTextController,
              hintText: "lbl_first_name".tr,
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              });
        });
  }

  /// Section Widget
  Widget _buildLastNameEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: BlocSelector<AndroidLarge109Bloc, AndroidLarge109State,
                TextEditingController?>(
            selector: (state) => state.lastNameEditTextController,
            builder: (context, lastNameEditTextController) {
              return CustomTextFormField(
                  width: 152.h,
                  controller: lastNameEditTextController,
                  hintText: "lbl_last_name".tr,
                  validator: (value) {
                    if (!isText(value)) {
                      return "err_msg_please_enter_valid_text".tr;
                    }
                    return null;
                  });
            }));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          _buildFirstNameEditText(context),
          _buildLastNameEditText(context)
        ]));
  }

  /// Section Widget
  Widget _buildEmailEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: BlocSelector<AndroidLarge109Bloc, AndroidLarge109State,
                TextEditingController?>(
            selector: (state) => state.emailEditTextController,
            builder: (context, emailEditTextController) {
              return CustomTextFormField(
                  controller: emailEditTextController,
                  hintText: "lbl_e_mail".tr,
                  textInputType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null ||
                        (!isValidEmail(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_email".tr;
                    }
                    return null;
                  });
            }));
  }

  /// Section Widget
  Widget _buildPhoneNumberEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: BlocSelector<AndroidLarge109Bloc, AndroidLarge109State,
                TextEditingController?>(
            selector: (state) => state.phoneNumberEditTextController,
            builder: (context, phoneNumberEditTextController) {
              return CustomTextFormField(
                  controller: phoneNumberEditTextController,
                  hintText: "lbl_phone_number".tr,
                  textInputType: TextInputType.phone,
                  validator: (value) {
                    if (!isValidPhone(value)) {
                      return "err_msg_please_enter_valid_phone_number".tr;
                    }
                    return null;
                  });
            }));
  }

  /// Section Widget
  Widget _buildPasswordEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 20.h, right: 22.h),
        child: BlocSelector<AndroidLarge109Bloc, AndroidLarge109State,
                TextEditingController?>(
            selector: (state) => state.passwordEditTextController,
            builder: (context, passwordEditTextController) {
              return CustomTextFormField(
                  controller: passwordEditTextController,
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
            }));
  }

  /// Section Widget
  Widget _buildConfirmPasswordEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 20.h, right: 22.h),
        child: BlocSelector<AndroidLarge109Bloc, AndroidLarge109State,
                TextEditingController?>(
            selector: (state) => state.confirmPasswordEditTextController,
            builder: (context, confirmPasswordEditTextController) {
              return CustomTextFormField(
                  controller: confirmPasswordEditTextController,
                  hintText: "msg_confirm_passward".tr,
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
            }));
  }

  /// Section Widget
  Widget _buildNationalIdEditText(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 20.h, right: 22.h),
        child: BlocSelector<AndroidLarge109Bloc, AndroidLarge109State,
                TextEditingController?>(
            selector: (state) => state.nationalIdEditTextController,
            builder: (context, nationalIdEditTextController) {
              return CustomTextFormField(
                  controller: nationalIdEditTextController,
                  hintText: "lbl_national_id".tr,
                  hintStyle: CustomTextStyles.titleSmallInter,
                  textInputAction: TextInputAction.done);
            }));
  }

  /// Section Widget
  Widget _buildSignUpButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_sign_up2".tr,
        margin: EdgeInsets.symmetric(horizontal: 20.h),
        buttonStyle: CustomButtonStyles.outlineBlack,
        onPressed: () {
          if(_formKey.currentState!.validate()){
            onTapSignUpButton(context);
          }
        });
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the androidLarge107Screen when the action is triggered.
  onTapSignUpButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.SignInScreen,
    );
  }

  /// Navigates to the androidLarge107Screen when the action is triggered.
  onTapTxtAlreadyIHaveAccount(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.SignInScreen,
    );
  }
}
