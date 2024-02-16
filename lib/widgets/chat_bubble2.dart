import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/size_utils.dart';
import 'package:graduation_project/localization/app_localization.dart';

import '../theme/app_decoration.dart';
import '../theme/custom_text_style.dart';

class ChatBuble2 extends StatelessWidget {
  ChatBuble2({Key ? key,});
  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: EdgeInsets.only(
        left: 20.h,
        right: 133.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          SizedBox(
            width: 182.h,
            child: Text(
              "HI mom",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style:
              CustomTextStyles.labelLargeBluegray900.copyWith(
                height: 1.58,
              ),
            ),
          ),
        ],
      ),
    );
  }
}