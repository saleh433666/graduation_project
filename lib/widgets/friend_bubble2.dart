import 'package:flutter/cupertino.dart';
import 'package:graduation_project/core/utils/size_utils.dart';

import '../theme/custom_button_style.dart';
import '../theme/custom_text_style.dart';
import 'custom_elevated_button.dart';

class ChatBubleFriend2 extends StatelessWidget {
  ChatBubleFriend2({Key ? key,});
  @override
  Widget build(BuildContext context) {
    return  CustomElevatedButton(
      height: 35.v,
      width: 79.h,
      text: "ايه يا زفت",
      margin: EdgeInsets.only(right: 20.h),
      buttonStyle: CustomButtonStyles.none,
      decoration:
      CustomButtonStyles.gradientGreenToPrimaryDecoration,
      buttonTextStyle: CustomTextStyles.labelLargeWhiteA700,
      alignment: Alignment.centerRight,
    );
  }
}
