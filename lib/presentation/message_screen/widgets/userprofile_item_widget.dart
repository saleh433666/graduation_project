import 'package:graduation_project/core/utils/size_utils.dart';

import '../../../core/utils/image_constant.dart';
import '../../../core/utils/navigator_service.dart';
import '../../../routes/app_routes.dart';
import '../../../theme/theme_helper.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){onTapImgShatBubble(context);},
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse107,
            height: 60.adaptSize,
            width: 60.adaptSize,
            radius: BorderRadius.circular(
              30.h,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 7.v,
                bottom: 7.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userprofileItemModelObj.doctorName!,
                    style: theme.textTheme.titleMedium,
                  ),
                  SizedBox(height: 2.v),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 3.v,
                          bottom: 5.v,
                        ),
                        child: Text(
                          userprofileItemModelObj.descriptionText!,
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  onTapImgShatBubble(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.ChatScreen,
    );
  }
}
