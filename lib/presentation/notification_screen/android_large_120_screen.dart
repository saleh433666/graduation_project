import 'package:graduation_project/localization/app_localization.dart';

import '../../core/app_export.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_floating_text_field.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_image_view.dart';
import 'bloc/android_large_120_bloc.dart';
import 'models/android_large_120_model.dart';
import 'package:flutter/material.dart';

class AndroidLarge120Screen extends StatelessWidget {
  const AndroidLarge120Screen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLarge120Bloc>(
      create: (context) => AndroidLarge120Bloc(AndroidLarge120State(
        androidLarge120ModelObj: AndroidLarge120Model(),
      ))
        ..add(AndroidLarge120InitialEvent()),
      child: AndroidLarge120Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AndroidLarge120Bloc, AndroidLarge120State>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: SizeUtils.width,
              child: SingleChildScrollView(
                padding: EdgeInsets.only(top: 48.v),
                child: Container(
                  margin: EdgeInsets.only(bottom: 5.v),
                  padding: EdgeInsets.symmetric(horizontal: 11.h),
                  child: Column(
                    children: [
                      _buildFloatingTextField(context),
                      SizedBox(height: 21.v),
                      _buildRow(context),
                      SizedBox(height: 21.v),
                      _buildStack(context),
                      SizedBox(height: 20.v),
                      _buildRow1(context),
                      SizedBox(height: 21.v),
                      _buildRow2(context),
                      SizedBox(height: 21.v),
                      _buildRow3(context),
                      SizedBox(height: 21.v),
                      _buildRow4(context),
                      SizedBox(height: 21.v),
                      _buildRow5(context),
                      SizedBox(height: 21.v),
                      _buildRow6(context),
                      SizedBox(height: 21.v),
                      _buildRow7(context),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 73.v,
      leadingWidth: 150.h,
      leading:Icon(Icons.notification_important,size: 50,) ,
      centerTitle: true,
      title: AppbarTitle(
        text: "notifications".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildFloatingTextField(BuildContext context) {
    return BlocSelector<AndroidLarge120Bloc, AndroidLarge120State,
        TextEditingController?>(
      selector: (state) => state.floatingTextFieldController,
      builder: (context, floatingTextFieldController) {
        return CustomFloatingTextField(
          autofocus: false,
          controller: floatingTextFieldController,
          labelText: "".tr,
          labelStyle: theme.textTheme.bodyMedium!,
          hintText: "".tr,
          prefix: IconButton(
            onPressed: () {},
            constraints: BoxConstraints(
              minHeight: 33.adaptSize,
              minWidth: 33.adaptSize,
            ),
            padding: EdgeInsets.all(0),
            icon: Container(
              width: 33.adaptSize,
              height: 33.adaptSize,
              decoration: BoxDecoration(
                color: appTheme.whiteA700,
                borderRadius: BorderRadius.circular(
                  5.h,
                ),
              ),
              padding: EdgeInsets.all(6.h),
              child:Icon(Icons.notifications),
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 54.v,
          ),
          suffix: Container(
            width: 10.adaptSize,
          ),
          suffixConstraints: BoxConstraints(
            maxHeight: 54.v,
          ),
          contentPadding: EdgeInsets.fromLTRB(30.h, 26.v, 30.h, 10.v),
          borderDecoration: FloatingTextFormFieldStyleHelper.fillGray,
          filled: true,
          fillColor: appTheme.gray100,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFloatingTextField1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: BlocSelector<AndroidLarge120Bloc, AndroidLarge120State,
          TextEditingController?>(
        selector: (state) => state.floatingTextFieldController1,
        builder: (context, floatingTextFieldController1) {
          return CustomFloatingTextField(
            width: 117.h,
            controller: floatingTextFieldController1,
            labelText: "",
            labelStyle: theme.textTheme.bodyMedium!,
            hintText: "",
            prefix: IconButton(
              onPressed: () {},
              constraints: BoxConstraints(
                minHeight: 33.adaptSize,
                minWidth: 33.adaptSize,
              ),
              padding: EdgeInsets.all(0),
              icon: Container(
                width: 33.adaptSize,
                height: 33.adaptSize,
                decoration: BoxDecoration(
                  color: appTheme.whiteA700,
                  borderRadius: BorderRadius.circular(
                    5.h,
                  ),
                ),
                padding: EdgeInsets.all(6.h),
                child:Icon(Icons.notifications),
                ),
              ),

            prefixConstraints: BoxConstraints(
              maxHeight: 33.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillGray50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildFloatingTextField1(context),
          Container(
            height: 10.adaptSize,
            width: 10.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 11.v),
            decoration: BoxDecoration(
              color: appTheme.gray700,
              borderRadius: BorderRadius.circular(
                5.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFloatingTextField2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: BlocSelector<AndroidLarge120Bloc, AndroidLarge120State,
          TextEditingController?>(
        selector: (state) => state.floatingTextFieldController2,
        builder: (context, floatingTextFieldController2) {
          return CustomFloatingTextField(
            width: 117.h,
            controller: floatingTextFieldController2,
            labelText: "".tr,
            labelStyle: theme.textTheme.bodyMedium!,
            prefix: IconButton(
              onPressed: () {},
              constraints: BoxConstraints(
                minHeight: 33.adaptSize,
                minWidth: 33.adaptSize,
              ),
              padding: EdgeInsets.all(0),
              icon: Container(
                width: 33.adaptSize,
                height: 33.adaptSize,
                decoration: BoxDecoration(
                  color: appTheme.whiteA700,
                  borderRadius: BorderRadius.circular(
                    5.h,
                  ),
                ),
                padding: EdgeInsets.all(6.h),
                child:Icon(Icons.notifications) ,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 33.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildStack(BuildContext context) {
    return SizedBox(
      height: 55.v,
      width: 337.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 8.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.fillGray50.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildFloatingTextField2(context),
                  Container(
                    height: 10.adaptSize,
                    width: 10.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 11.v),
                    decoration: BoxDecoration(
                      color: appTheme.gray700,
                      borderRadius: BorderRadius.circular(
                        5.h,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 55.v,
              width: 337.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 54.v,
                      width: 337.h,
                      decoration: BoxDecoration(
                        color: appTheme.gray100,
                        borderRadius: BorderRadius.circular(
                          8.h,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.h,
                        vertical: 10.v,
                      ),
                      decoration: AppDecoration.fillGray50.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder8,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: CustomIconButton(
                              height: 33.adaptSize,
                              width: 33.adaptSize,
                              padding: EdgeInsets.all(6.h),
                              child:Icon(Icons.notifications) ,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 12.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "".tr,
                                  style: theme.textTheme.bodySmall,
                                ),
                                SizedBox(height: 1.v),
                                Text(
                                  "".tr,
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Container(
                            height: 10.adaptSize,
                            width: 10.adaptSize,
                            margin: EdgeInsets.symmetric(vertical: 11.v),
                            decoration: BoxDecoration(
                              color: appTheme.gray700,
                              borderRadius: BorderRadius.circular(
                                5.h,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFloatingTextField3(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: BlocSelector<AndroidLarge120Bloc, AndroidLarge120State,
          TextEditingController?>(
        selector: (state) => state.floatingTextFieldController3,
        builder: (context, floatingTextFieldController3) {
          return CustomFloatingTextField(
            width: 117.h,
            controller: floatingTextFieldController3,
            labelText: "lbl_8th_july_2023".tr,
            labelStyle: theme.textTheme.bodyMedium!,
            hintText: "lbl_8th_july_2023".tr,
            prefix: IconButton(
              onPressed: () {},
              constraints: BoxConstraints(
                minHeight: 33.adaptSize,
                minWidth: 33.adaptSize,
              ),
              padding: EdgeInsets.all(0),
              icon: Container(
                width: 33.adaptSize,
                height: 33.adaptSize,
                decoration: BoxDecoration(
                  color: appTheme.whiteA700,
                  borderRadius: BorderRadius.circular(
                    5.h,
                  ),
                ),
                padding: EdgeInsets.all(6.h),
                child: Icon(Icons.notifications) ,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 33.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildRow1(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillGray50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildFloatingTextField3(context),
          Container(
            height: 10.adaptSize,
            width: 10.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 11.v),
            decoration: BoxDecoration(
              color: appTheme.gray700,
              borderRadius: BorderRadius.circular(
                5.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFloatingTextField4(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: BlocSelector<AndroidLarge120Bloc, AndroidLarge120State,
          TextEditingController?>(
        selector: (state) => state.floatingTextFieldController4,
        builder: (context, floatingTextFieldController4) {
          return CustomFloatingTextField(
            width: 117.h,
            controller: floatingTextFieldController4,
            labelText: "lbl_8th_july_2023".tr,
            labelStyle: theme.textTheme.bodyMedium!,
            hintText: "lbl_8th_july_2023".tr,
            prefix: IconButton(
              onPressed: () {},
              constraints: BoxConstraints(
                minHeight: 33.adaptSize,
                minWidth: 33.adaptSize,
              ),
              padding: EdgeInsets.all(0),
              icon: Container(
                width: 33.adaptSize,
                height: 33.adaptSize,
                decoration: BoxDecoration(
                  color: appTheme.whiteA700,
                  borderRadius: BorderRadius.circular(
                    5.h,
                  ),
                ),
                padding: EdgeInsets.all(6.h),
                child:Icon(Icons.notifications) ,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 33.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildRow2(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillGray50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildFloatingTextField4(context),
          Container(
            height: 10.adaptSize,
            width: 10.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 11.v),
            decoration: BoxDecoration(
              color: appTheme.gray700,
              borderRadius: BorderRadius.circular(
                5.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFloatingTextField5(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: BlocSelector<AndroidLarge120Bloc, AndroidLarge120State,
          TextEditingController?>(
        selector: (state) => state.floatingTextFieldController5,
        builder: (context, floatingTextFieldController5) {
          return CustomFloatingTextField(
            width: 117.h,
            controller: floatingTextFieldController5,
            labelText: "lbl_8th_july_2023".tr,
            labelStyle: theme.textTheme.bodyMedium!,
            hintText: "lbl_8th_july_2023".tr,
            prefix: IconButton(
              onPressed: () {},
              constraints: BoxConstraints(
                minHeight: 33.adaptSize,
                minWidth: 33.adaptSize,
              ),
              padding: EdgeInsets.all(0),
              icon: Container(
                width: 33.adaptSize,
                height: 33.adaptSize,
                decoration: BoxDecoration(
                  color: appTheme.whiteA700,
                  borderRadius: BorderRadius.circular(
                    5.h,
                  ),
                ),
                padding: EdgeInsets.all(6.h),
                child:Icon(Icons.notifications) ,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 33.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildRow3(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillGray50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildFloatingTextField5(context),
          Container(
            height: 10.adaptSize,
            width: 10.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 11.v),
            decoration: BoxDecoration(
              color: appTheme.gray700,
              borderRadius: BorderRadius.circular(
                5.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFloatingTextField6(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: BlocSelector<AndroidLarge120Bloc, AndroidLarge120State,
          TextEditingController?>(
        selector: (state) => state.floatingTextFieldController6,
        builder: (context, floatingTextFieldController6) {
          return CustomFloatingTextField(
            width: 117.h,
            controller: floatingTextFieldController6,
            labelText: "lbl_8th_july_2023".tr,
            labelStyle: theme.textTheme.bodyMedium!,
            hintText: "lbl_8th_july_2023".tr,
            prefix: IconButton(
              onPressed: () {},
              constraints: BoxConstraints(
                minHeight: 33.adaptSize,
                minWidth: 33.adaptSize,
              ),
              padding: EdgeInsets.all(0),
              icon: Container(
                width: 33.adaptSize,
                height: 33.adaptSize,
                decoration: BoxDecoration(
                  color: appTheme.whiteA700,
                  borderRadius: BorderRadius.circular(
                    5.h,
                  ),
                ),
                padding: EdgeInsets.all(6.h),
                child:Icon(Icons.notifications) ,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 33.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildRow4(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillGray50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildFloatingTextField6(context),
          Container(
            height: 10.adaptSize,
            width: 10.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 11.v),
            decoration: BoxDecoration(
              color: appTheme.gray700,
              borderRadius: BorderRadius.circular(
                5.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFloatingTextField7(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: BlocSelector<AndroidLarge120Bloc, AndroidLarge120State,
          TextEditingController?>(
        selector: (state) => state.floatingTextFieldController7,
        builder: (context, floatingTextFieldController7) {
          return CustomFloatingTextField(
            width: 117.h,
            controller: floatingTextFieldController7,
            labelText: "lbl_8th_july_2023".tr,
            labelStyle: theme.textTheme.bodyMedium!,
            hintText: "lbl_8th_july_2023".tr,
            prefix: IconButton(
              onPressed: () {},
              constraints: BoxConstraints(
                minHeight: 33.adaptSize,
                minWidth: 33.adaptSize,
              ),
              padding: EdgeInsets.all(0),
              icon: Container(
                width: 33.adaptSize,
                height: 33.adaptSize,
                decoration: BoxDecoration(
                  color: appTheme.whiteA700,
                  borderRadius: BorderRadius.circular(
                    5.h,
                  ),
                ),
                padding: EdgeInsets.all(6.h),
                child:Icon(Icons.notifications) ,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 33.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildRow5(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillGray50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildFloatingTextField7(context),
          Container(
            height: 10.adaptSize,
            width: 10.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 11.v),
            decoration: BoxDecoration(
              color: appTheme.gray700,
              borderRadius: BorderRadius.circular(
                5.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFloatingTextField8(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: BlocSelector<AndroidLarge120Bloc, AndroidLarge120State,
          TextEditingController?>(
        selector: (state) => state.floatingTextFieldController8,
        builder: (context, floatingTextFieldController8) {
          return CustomFloatingTextField(
            width: 117.h,
            controller: floatingTextFieldController8,
            labelText: "lbl_8th_july_2023".tr,
            labelStyle: theme.textTheme.bodyMedium!,
            hintText: "lbl_8th_july_2023".tr,
            prefix: IconButton(
              onPressed: () {},
              constraints: BoxConstraints(
                minHeight: 33.adaptSize,
                minWidth: 33.adaptSize,
              ),
              padding: EdgeInsets.all(0),
              icon: Container(
                width: 33.adaptSize,
                height: 33.adaptSize,
                decoration: BoxDecoration(
                  color: appTheme.whiteA700,
                  borderRadius: BorderRadius.circular(
                    5.h,
                  ),
                ),
                padding: EdgeInsets.all(6.h),
                child:Icon(Icons.notifications) ,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 33.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildRow6(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillGray50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildFloatingTextField8(context),
          Container(
            height: 10.adaptSize,
            width: 10.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 11.v),
            decoration: BoxDecoration(
              color: appTheme.gray700,
              borderRadius: BorderRadius.circular(
                5.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFloatingTextField9(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: BlocSelector<AndroidLarge120Bloc, AndroidLarge120State,
          TextEditingController?>(
        selector: (state) => state.floatingTextFieldController9,
        builder: (context, floatingTextFieldController9) {
          return CustomFloatingTextField(
            width: 117.h,
            controller: floatingTextFieldController9,
            labelText: "lbl_2nd_july_2023".tr,
            labelStyle: theme.textTheme.bodyMedium!,
            hintText: "lbl_2nd_july_2023".tr,
            textInputAction: TextInputAction.done,
            prefix: IconButton(
              onPressed: () {},
              constraints: BoxConstraints(
                minHeight: 33.adaptSize,
                minWidth: 33.adaptSize,
              ),
              padding: EdgeInsets.all(0),
              icon: Container(
                width: 33.adaptSize,
                height: 33.adaptSize,
                decoration: BoxDecoration(
                  color: appTheme.whiteA700,
                  borderRadius: BorderRadius.circular(
                    5.h,
                  ),
                ),
                padding: EdgeInsets.all(6.h),
                child:Icon(Icons.notifications) ,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 33.v,
            ),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildRow7(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillGray50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildFloatingTextField9(context),
          Container(
            height: 10.adaptSize,
            width: 10.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 11.v),
            decoration: BoxDecoration(
              color: appTheme.gray700,
              borderRadius: BorderRadius.circular(
                5.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


