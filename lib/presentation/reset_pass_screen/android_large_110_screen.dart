import 'package:graduation_project/localization/app_localization.dart';
import '../../core/app_export.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/navigator_service.dart';
import '../../core/utils/size_utils.dart';
import '../../core/utils/validation_functions.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/android_large_110_bloc.dart';
import 'models/android_large_110_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
// ignore_for_file: must_be_immutable
class AndroidLarge110Screen extends StatelessWidget {
  AndroidLarge110Screen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLarge110Bloc>(
        create: (context) => AndroidLarge110Bloc(AndroidLarge110State(
            androidLarge110ModelObj: AndroidLarge110Model()))
          ..add(AndroidLarge110InitialEvent()),
        child: AndroidLarge110Screen());
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
                            width: double.maxFinite,
                            padding: EdgeInsets.only(
                                left: 20.h, top: 79.v, right: 20.h),
                            child: Column(children: [
                              Container(
                                  margin:
                                      EdgeInsets.only(left: 78.h, right: 68.h),
                                  decoration: AppDecoration.outlineBlack,
                                  child: Container(
                                      height: 172.adaptSize,
                                      width: 172.adaptSize,
                                      padding:
                                          EdgeInsets.symmetric(vertical: 5.v),
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: fs.Svg(
                                                  ImageConstant.imgGroup120),
                                              fit: BoxFit.cover)),
                                      child: Stack(
                                          alignment: Alignment.bottomRight,
                                          children: [
                                            Opacity(
                                                opacity: 0.5,
                                                child: CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgPlants,
                                                    height: 85.v,
                                                    width: 159.h,
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    margin: EdgeInsets.only(
                                                        bottom: 3.v))),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgMail,
                                                height: 106.v,
                                                width: 117.h,
                                                alignment:
                                                    Alignment.bottomRight,
                                                margin: EdgeInsets.only(
                                                    right: 19.h))
                                          ]))),
                              SizedBox(height: 40.v),
                              BlocSelector<
                                      AndroidLarge110Bloc,
                                      AndroidLarge110State,
                                      TextEditingController?>(
                                  selector: (state) => state.emailController,
                                  builder: (context, emailController) {
                                    return CustomTextFormField(
                                        controller: emailController,
                                        hintText: "lbl_e_mail2".tr,
                                        textInputAction: TextInputAction.done,
                                        textInputType:
                                            TextInputType.emailAddress,
                                        validator: (value) {
                                          if (value == null ||
                                              (!isValidEmail(value,
                                                  isRequired: true))) {
                                            return "err_msg_please_enter_valid_email"
                                                .tr;
                                          }
                                          return null;
                                        });
                                  }),
                              SizedBox(height: 16.v),
                              CustomElevatedButton(
                                  text: "lbl_next".tr,
                                  buttonStyle:
                                      CustomButtonStyles.outlineBlackTL8,
                                  onPressed: () {
                                    if(_formKey.currentState!.validate()){
                                      onTapNext(context);
                                    }
                                  }),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 36.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgIconBlueGray900,
            margin: EdgeInsets.only(left: 27.h, top: 26.v, bottom: 13.v)),
        title: AppbarSubtitle(
            text: "lbl_reset_password".tr,
            margin: EdgeInsets.only(left: 85.h)));
  }

  /// Navigates to the androidLarge111Screen when the action is triggered.
  onTapNext(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.CodeScreen,
    );
  }
}
