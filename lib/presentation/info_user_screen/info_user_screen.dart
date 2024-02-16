import 'package:graduation_project/localization/app_localization.dart';

import '../../core/app_export.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/info_user_bloc.dart';
import 'models/info_user_model.dart';
import 'package:flutter/material.dart';


class InfoUserScreen extends StatelessWidget {
  const InfoUserScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<InfoUserBloc>(
      create: (context) => InfoUserBloc(InfoUserState(
        infoUserModelObj: InfoUserModel(),
      ))
        ..add(InfoUserInitialEvent()),
      child: InfoUserScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InfoUserBloc, InfoUserState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: SizeUtils.width,
              child: SingleChildScrollView(
                padding: EdgeInsets.only(top: 12.v),
                child: Container(
                  width: 318.h,
                  margin: EdgeInsets.only(
                    left: 23.h,
                    right: 17.h,
                    bottom: 5.v,
                  ),
                  child: Text(
                    "msg_fattening_mixtures".tr,
                    maxLines: 43,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.labelLarge!.copyWith(
                      height: 1.58,
                    ),
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
      leadingWidth: 35.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgIcon,
        margin: EdgeInsets.only(
          left: 26.h,
          top: 41.v,
          bottom: 26.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_about_recipe".tr,
      ),
      styleType: Style.bgShadow,
    );
  }
}
