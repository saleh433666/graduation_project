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
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/user_edit_bloc.dart';
import 'models/user_edit_model.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class UserEditScreen extends StatelessWidget {
  UserEditScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<UserEditBloc>(
        create: (context) =>
            UserEditBloc(UserEditState(userEditModelObj: UserEditModel()))
              ..add(UserEditInitialEvent()),
        child: UserEditScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color:Colors.lightGreen,
                  ),
                  child: Center(
                    child: Text(
                      'Vet Det',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text('details'),
                  onTap: () {
                    onTapImgLock(context); // Closes the drawer
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.chat),
                  title: const Text('chat'),
                  onTap: () {
                    onTapImgShat(context); // Closes the drawer
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.notification_important),
                  title: const Text('notification'),
                  onTap: () {
                    onTapImgNotification(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.info),
                  title: const Text('info'),
                  onTap: () {
                    onTapImgInfo(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text('logout'),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
            backgroundColor: appTheme.gray50,
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
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 19.h, vertical: 36.v),
                            child: Column(children: [
                              SizedBox(
                                  height: 140.v,
                                  width: 130.h,
                                  child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgEllipse18,
                                            height: 130.adaptSize,
                                            width: 130.adaptSize,
                                            radius: BorderRadius.circular(65.h),
                                            alignment: Alignment.topCenter),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(right: 23.h),
                                            child: CustomIconButton(
                                                height: 35.adaptSize,
                                                width: 35.adaptSize,
                                                padding: EdgeInsets.all(8.h),
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgEdit)))
                                      ])),
                              SizedBox(height: 52.v),
                              _buildFullName(context),
                              SizedBox(height: 9.v),
                              _buildEmail(context),
                              SizedBox(height: 9.v),
                              _buildPhoneNumber(context),
                              SizedBox(height: 9.v),
                              _buildPassword(context),
                              SizedBox(height: 86.v),
                              _buildSave(context),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 84.v,
        leadingWidth: 35.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgIconBlueGray900,
            margin: EdgeInsets.only(left: 26.h, top: 42.v, bottom: 25.v)),
        centerTitle: true,
        title: AppbarSubtitle(
            text: "lbl_my_profile".tr,
            margin: EdgeInsets.only(top: 38.v, bottom: 16.v)),
        styleType: Style.bgShadow_1);
  }

  /// Section Widget
  Widget _buildFullName(BuildContext context) {
    return BlocSelector<UserEditBloc, UserEditState, TextEditingController?>(
        selector: (state) => state.fullNameController,
        builder: (context, fullNameController) {
          return CustomTextFormField(
              controller: fullNameController,
              hintText: "lbl_full_name".tr,
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              },
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 13.h, vertical: 19.v));
        });
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return BlocSelector<UserEditBloc, UserEditState, TextEditingController?>(
        selector: (state) => state.emailController,
        builder: (context, emailController) {
          return CustomTextFormField(
              controller: emailController,
              hintText: "lbl_email2".tr,
              textInputType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              },
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 12.h, vertical: 19.v));
        });
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return BlocSelector<UserEditBloc, UserEditState, TextEditingController?>(
        selector: (state) => state.phoneNumberController,
        builder: (context, phoneNumberController) {
          return CustomTextFormField(
              controller: phoneNumberController,
              hintText: "lbl_phone_number2".tr,
              textInputType: TextInputType.phone,
              validator: (value) {
                if (!isValidPhone(value)) {
                  return "err_msg_please_enter_valid_phone_number".tr;
                }
                return null;
              },
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 12.h, vertical: 19.v));
        });
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return BlocSelector<UserEditBloc, UserEditState, TextEditingController?>(
        selector: (state) => state.passwordController,
        builder: (context, passwordController) {
          return CustomTextFormField(
              controller: passwordController,
              hintText: "lbl_password".tr,
              hintStyle: CustomTextStyles.titleSmallInter,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.visiblePassword,
              validator: (value) {
                if (value == null ||
                    (!isValidPassword(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_password".tr;
                }
                return null;
              },
              obscureText: true,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 12.h, vertical: 19.v));
        });
  }

  /// Section Widget
  Widget _buildSave(BuildContext context) {
    return CustomElevatedButton(
        width: 153.h,
        text: "lbl_save".tr,
        buttonStyle: CustomButtonStyles.outlineBlack,
        buttonTextStyle: CustomTextStyles.titleMediumWhiteA700Bold,
        onPressed: () {
          onTapSave(context);
        },
        alignment: Alignment.centerRight);
  }

  /// Navigates to the userHomeScreen when the action is triggered.
  onTapSave(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.userHomeScreen,
    );
  }
  onTapImgImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.BookScreen,
    );
  }
  onTapImgShat(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.MessageScreen,
    );
  }
  onTapImgScan(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.ScanScreen,
    );
  }
  onTapImgRecipes(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.RecipesPage,
    );
  }
  onTapImgNotification(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.NotificationScreen,
    );
  }
  onTapImgInfo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.infoUserScreen,
    );
  }
  onTapImgLock(BuildContext context) {
    NavigatorService.popAndPushNamed(
      AppRoutes.userEditScreen,
    );
  }
}
