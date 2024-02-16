import 'package:graduation_project/localization/app_localization.dart';

import '../../core/app_export.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/appbar_trailing_circleimage.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/chat_bubble2.dart';
import '../../widgets/chat_buble.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import '../../widgets/friend_bubble2.dart';
import 'bloc/android_large_ninety_bloc.dart';
import 'models/android_large_ninety_model.dart';
import 'package:flutter/material.dart';


class AndroidLargeNinetyScreen extends StatelessWidget {
  const AndroidLargeNinetyScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeNinetyBloc>(
      create: (context) => AndroidLargeNinetyBloc(AndroidLargeNinetyState(
        androidLargeNinetyModelObj: AndroidLargeNinetyModel(),
      ))
        ..add(AndroidLargeNinetyInitialEvent()),
      child: AndroidLargeNinetyScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: ListView(
            children:[ Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ChatBuble(),
                SizedBox(height: 20,),
                ChatBubleFriend(),
                SizedBox(height: 20,),
                ChatBuble2(),
                SizedBox(height: 20.v),
                ChatBuble2(),
                SizedBox(height: 21.v),
                ChatBubleFriend2(),
                SizedBox(height: 339.v),
                SizedBox(height: 48.v),
                BlocSelector<AndroidLargeNinetyBloc, AndroidLargeNinetyState,
                    TextEditingController?>(
                  selector: (state) => state.messageController,
                  builder: (context, messageController) {
                    return CustomTextFormField(
                      controller: messageController,
                      hintText: "lbl_type_a_message".tr,
                      textInputAction: TextInputAction.done,
                      prefix: Padding(
                        padding: EdgeInsets.fromLTRB(
                            28.h, 26.119995.v, 30.h, 26.119995.v),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.record_voice_over)
                          ],
                        ),
                      ),
                      prefixConstraints: BoxConstraints(
                        maxHeight: 84.v,
                      ),
                      suffix:IconButton(onPressed: () {  }, icon:Icon(Icons.send),),
                      suffixConstraints: BoxConstraints(
                        maxHeight: 84.v,
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 33.v),
                      borderDecoration: TextFormFieldStyleHelper.outlineBlack,
                      filled: true,
                      fillColor: appTheme.gray50,
                    );
                  },
                ),
              ],
            )],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 89.v,
      leadingWidth: 51.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 19.h,
          top: 28.v,
          bottom: 27.v,
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.fromLTRB(23.h, 21.v, 11.h, 11.v),
          child: Column(
            children: [
              AppbarSubtitleOne(
                text: "lbl_user_name".tr,
              ),
              SizedBox(height: 2.v),
              AppbarSubtitleTwo(
                text: "lbl_online".tr,
                margin: EdgeInsets.only(
                  left: 26.h,
                  right: 31.h,
                ),
              ),
            ],
          ),
        ),
        AppbarTrailingCircleimage(
          imagePath: ImageConstant.imgEllipse109,
          margin: EdgeInsets.only(
            left: 16.h,
            top: 12.v,
            right: 34.h,
          ),
        ),
      ],
      styleType: Style.bgShadow_2,
    );
  }
}
