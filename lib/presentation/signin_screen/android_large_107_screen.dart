import 'package:graduation_project/localization/app_localization.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../core/app_export.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/navigator_service.dart';
import '../../core/utils/size_utils.dart';
import '../../core/utils/validation_functions.dart';
import '../../domain/facebookauth/facebook_auth_helper.dart';
import '../../domain/googleauth/google_auth_helper.dart';
import '../../routes/app_routes.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/android_large_107_bloc.dart';
import 'models/android_large_107_model.dart';
import 'package:flutter/material.dart';


// ignore_for_file: must_be_immutable
class AndroidLarge107Screen extends StatelessWidget {
  AndroidLarge107Screen({Key? key}) : super(key: key);


  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLarge107Bloc>(
        create: (context) => AndroidLarge107Bloc(AndroidLarge107State(
            androidLarge107ModelObj: AndroidLarge107Model()))
          ..add(AndroidLarge107InitialEvent()),
        child: AndroidLarge107Screen());
  }

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ModalProgressHUD(
          inAsyncCall: isLoading,
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
                              padding: EdgeInsets.symmetric(vertical: 31.v),
                              child: Column(children: [
                                SizedBox(
                                    height: 428.v,
                                    width: 351.h,
                                    child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          Align(
                                              alignment: Alignment.topRight,
                                              child: Container(
                                                  height: 262.v,
                                                  width: 180.h,
                                                  margin:
                                                      EdgeInsets.only(top: 26.v),
                                                  child: Stack(
                                                      alignment: Alignment.center,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgFunnyHorse3dIllustration,
                                                            height: 262.v,
                                                            width: 180.h,
                                                            alignment:
                                                                Alignment.center),
                                                        CustomImageView(
                                                            imagePath: ImageConstant
                                                                .imgFunnyHorse3dIllustration,
                                                            height: 262.v,
                                                            width: 180.h,
                                                            alignment:
                                                                Alignment.center)
                                                      ]))),
                                          _buildLoginForm(context),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 249.h),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgArrowLeft,
                                                            height: 42.adaptSize,
                                                            width: 42.adaptSize,
                                                            onTap: () {
                                                              onTapImgArrowLeft(
                                                                  context);
                                                            }),
                                                        SizedBox(height: 105.v),
                                                        Align(
                                                            alignment: Alignment
                                                                .centerRight,
                                                            child: Text(
                                                                "lbl_sign_in2".tr,
                                                                style: CustomTextStyles
                                                                    .headlineMediumSegoeUIBluegray900Bold28))
                                                      ])))
                                        ])),
                                SizedBox(height: 63.v),
                                GestureDetector(
                                    onTap: () {
                                        isLoading = true;
                                          onTapTxtSignUp(context);
                                        isLoading = false;
                                     },
                                    child: Text("lbl_sign_up2".tr,
                                        style: CustomTextStyles
                                            .titleMediumGray700Bold
                                            .copyWith(
                                                decoration:
                                                    TextDecoration.underline))),
                                SizedBox(height: 15.v),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 44.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: 8.v, bottom: 9.v),
                                              child: SizedBox(
                                                  width: 124.h,
                                                  child: Divider())),
                                          Padding(
                                              padding: EdgeInsets.only(left: 5.h),
                                              child: Text("lbl_or".tr,
                                                  style: theme
                                                      .textTheme.bodyMedium)),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: 8.v, bottom: 9.v),
                                              child: SizedBox(
                                                  width: 127.h,
                                                  child: Divider(indent: 3.h)))
                                        ])),
                                SizedBox(height: 14.v),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgFacebook,
                                          height: 21.v,
                                          width: 11.h,
                                          onTap: () {
                                            onTapImgFacebook(context);
                                          }),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgGoogle,
                                          height: 21.adaptSize,
                                          width: 21.adaptSize,
                                          margin: EdgeInsets.only(left: 24.h),
                                          onTap: () {
                                            onTapImgGoogle(context);
                                          })
                                    ]),
                                SizedBox(height: 5.v)
                              ])))))),
        ));
  }

  /// Section Widget
  Widget _buildLoginForm(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 11.h, right: 20.h),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              BlocSelector<AndroidLarge107Bloc, AndroidLarge107State,
                      TextEditingController?>(
                  selector: (state) => state.phoneNumberController,
                  builder: (context, phoneNumberController) {
                    return CustomTextFormField(
                        controller: phoneNumberController,
                        hintText: "msg_e_mail_or_phone".tr,
                        textInputType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null ||
                              (!isValidEmail(value, isRequired: true))) {
                            return "err_msg_please_enter_valid_email".tr;
                          }
                          return null;
                        });
                  }),
              SizedBox(height: 16.v),
              BlocSelector<AndroidLarge107Bloc, AndroidLarge107State,
                      TextEditingController?>(
                  selector: (state) => state.passwordController,
                  builder: (context, passwordController) {
                    return CustomTextFormField(
                        controller: passwordController,
                        hintText: "lbl_password".tr,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        obscureText: true,
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 9.h, vertical: 15.v));
                  }),
              SizedBox(height: 24.v),
              CustomElevatedButton(
                  text: "lbl_log_in".tr,
                  buttonTextStyle: CustomTextStyles.titleMediumInterGray5001,
                  onPressed: () {
                    if(_formKey.currentState!.validate()){
                      isLoading = true;
                      onTapLogIn(context);
                    isLoading = false;
                    }
                  }),
              SizedBox(height: 16.v),
              GestureDetector(
                  onTap: () {
                    onTapTxtForgotPassword(context);
                  },
                  child: Text("msg_forgot_password".tr,
                      style: CustomTextStyles.titleSmallGray700))
            ])));
  }

  /// Navigates to the userHomeScreen when the action is triggered.
  onTapLogIn(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.userHomeScreen,
    );
  }

  /// Navigates to the androidLarge110Screen when the action is triggered.
  onTapTxtForgotPassword(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.ResetPassScreen,
    );
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the androidLarge109Screen when the action is triggered.
  onTapTxtSignUp(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.SingUpScreen,
    );
  }

  onTapImgFacebook(BuildContext context) async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }

  onTapImgGoogle(BuildContext context) async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('user data is empty')));
      }
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }
}
