import 'package:graduation_project/localization/app_localization.dart';

import '../../core/app_export.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/navigator_service.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_checkbox_button.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/android_large_119_bloc.dart';
import 'models/android_large_119_model.dart';
import 'package:flutter/material.dart';


class AndroidLarge119Screen extends StatelessWidget {
  const AndroidLarge119Screen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLarge119Bloc>(
        create: (context) => AndroidLarge119Bloc(AndroidLarge119State(
            androidLarge119ModelObj: AndroidLarge119Model()))
          ..add(AndroidLarge119InitialEvent()),
        child: AndroidLarge119Screen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 33.v),
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 19.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("lbl_card_number".tr,
                                  style:
                                      CustomTextStyles.titleLargeInterPrimary),
                              SizedBox(height: 11.v),
                              _buildCardNumberEditText(context),
                              SizedBox(height: 47.v),
                              Text("msg_cash_header_name".tr,
                                  style:
                                      CustomTextStyles.titleLargeInterPrimary),
                              SizedBox(height: 11.v),
                              _buildNameEditText(context),
                              SizedBox(height: 47.v),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 4.h, right: 29.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(top: 2.v),
                                            child: Text("lbl_expire_date".tr,
                                                style: CustomTextStyles
                                                    .titleLargeInterPrimary)),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 2.v),
                                            child: Text("lbl_cvv".tr,
                                                style: CustomTextStyles
                                                    .titleLargeInterPrimary))
                                      ])),
                              SizedBox(height: 9.v),
                              _buildFiftyTwo(context),
                              SizedBox(height: 47.v),
                              _buildRememberMeCheckBox(context),
                              SizedBox(height: 47.v),
                              _buildThirty(context),
                              SizedBox(height: 104.v),
                              _buildPayNowButton(context)
                            ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 32.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgIconBlueGray900,
            margin: EdgeInsets.only(left: 23.h, top: 17.v, bottom: 22.v)),
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_payment".tr));
  }

  /// Section Widget
  Widget _buildCardNumberEditText(BuildContext context) {
    return BlocSelector<AndroidLarge119Bloc, AndroidLarge119State,
            TextEditingController?>(
        selector: (state) => state.cardNumberEditTextController,
        builder: (context, cardNumberEditTextController) {
          return CustomTextFormField(
              controller: cardNumberEditTextController,
              hintText: "msg_1234_5678".tr,
              hintStyle: CustomTextStyles.titleSmallInterGray700,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 14.h, vertical: 10.v),
              borderDecoration: TextFormFieldStyleHelper.outlineBlueGray);
        });
  }

  /// Section Widget
  Widget _buildNameEditText(BuildContext context) {
    return BlocSelector<AndroidLarge119Bloc, AndroidLarge119State,
            TextEditingController?>(
        selector: (state) => state.nameEditTextController,
        builder: (context, nameEditTextController) {
          return CustomTextFormField(
              controller: nameEditTextController,
              hintText: "lbl_jessi_gill".tr,
              hintStyle: CustomTextStyles.titleSmallInterGray700,
              contentPadding: EdgeInsets.all(10.h),
              borderDecoration: TextFormFieldStyleHelper.outlineBlueGray);
        });
  }

  /// Section Widget
  Widget _buildDateEditText(BuildContext context) {
    return BlocSelector<AndroidLarge119Bloc, AndroidLarge119State,
            TextEditingController?>(
        selector: (state) => state.dateEditTextController,
        builder: (context, dateEditTextController) {
          return CustomTextFormField(
              width: 99.h,
              controller: dateEditTextController,
              hintText: "lbl_25_7".tr,
              hintStyle: CustomTextStyles.titleSmallInterGray700,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 30.h, vertical: 10.v),
              borderDecoration: TextFormFieldStyleHelper.outlineBlueGray1);
        });
  }

  /// Section Widget
  Widget _buildZipcodeEditText(BuildContext context) {
    return BlocSelector<AndroidLarge119Bloc, AndroidLarge119State,
            TextEditingController?>(
        selector: (state) => state.zipcodeEditTextController,
        builder: (context, zipcodeEditTextController) {
          return CustomTextFormField(
              width: 100.h,
              controller: zipcodeEditTextController,
              hintText: "lbl_9432".tr,
              hintStyle: CustomTextStyles.titleSmallInterGray700,
              textInputAction: TextInputAction.done,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 30.h, vertical: 10.v),
              borderDecoration: TextFormFieldStyleHelper.outlineBlueGray);
        });
  }

  /// Section Widget
  Widget _buildFiftyTwo(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      _buildDateEditText(context),
      _buildZipcodeEditText(context)
    ]);
  }

  /// Section Widget
  Widget _buildRememberMeCheckBox(BuildContext context) {
    return BlocSelector<AndroidLarge119Bloc, AndroidLarge119State, bool?>(
        selector: (state) => state.rememberMeCheckBox,
        builder: (context, rememberMeCheckBox) {
          return CustomCheckboxButton(
              text: "lbl_remember_me".tr,
              value: rememberMeCheckBox,
              onChange: (value) {
                context
                    .read<AndroidLarge119Bloc>()
                    .add(ChangeCheckBoxEvent(value: value));
              });
        });
  }

  /// Section Widget
  Widget _buildThirtyButton(BuildContext context) {
    return CustomOutlinedButton(
        width: 56.h,
        text: "lbl_30".tr,
        buttonStyle: CustomButtonStyles.outlineBlueGray,
        buttonTextStyle: CustomTextStyles.titleLargeInterGray700SemiBold);
  }

  /// Section Widget
  Widget _buildThirty(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 10.v, bottom: 8.v),
          child: Text("lbl_total".tr,
              style: CustomTextStyles.titleLargeInterPrimary)),
      _buildThirtyButton(context)
    ]);
  }

  /// Section Widget
  Widget _buildPayNowButton(BuildContext context) {
    return CustomElevatedButton(
        height: 48.v,
        text: "lbl_pay_now".tr,
        buttonTextStyle: CustomTextStyles.titleMediumWhiteA700,
        onPressed: () {
          onTapPayNowButton(context);
        });
  }

  /// Navigates to the androidLarge118Screen when the action is triggered.
  onTapPayNowButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.BookedScreen,
    );
  }
}
