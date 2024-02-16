import 'package:graduation_project/core/utils/size_utils.dart';
import 'package:graduation_project/localization/app_localization.dart';
import 'package:graduation_project/presentation/message_screen/widgets/userprofile_item_widget.dart';

import '../../core/app_export.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/navigator_service.dart';
import '../../theme/app_decoration.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/android_large_124_bloc.dart';
import 'models/android_large_124_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:flutter/material.dart';

class AndroidLarge124Screen extends StatelessWidget {
  const AndroidLarge124Screen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLarge124Bloc>(
        create: (context) => AndroidLarge124Bloc(AndroidLarge124State(
            androidLarge124ModelObj: AndroidLarge124Model()))
          ..add(AndroidLarge124InitialEvent()),
        child: AndroidLarge124Screen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.only(left: 21.h, top: 16.v),
                child: BlocSelector<AndroidLarge124Bloc, AndroidLarge124State,
                        AndroidLarge124Model?>(
                    selector: (state) => state.androidLarge124ModelObj,
                    builder: (context, androidLarge124ModelObj) {
                      return ListView.separated(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: 24.v);
                          },
                          itemCount: androidLarge124ModelObj
                                  ?.userprofileItemList.length ??
                              0,
                          itemBuilder: (context, index) {
                            UserprofileItemModel model = androidLarge124ModelObj
                                    ?.userprofileItemList[index] ??
                                UserprofileItemModel();
                            return UserprofileItemWidget(model);
                          });
                    }))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 85.v,
        centerTitle: true,
        title: Column(children: [
          Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(left: 1.h),
              padding: EdgeInsets.symmetric(horizontal: 8.h),
              decoration: AppDecoration.fillGray50,
              child: Row(children: [
                AppbarImage(
                    imagePath: ImageConstant.imgArrowLeft,
                    margin: EdgeInsets.only(top: 24.v),
                    onTap: () {
                      onTapArrowLeft(context);
                    }),
                AppbarTitle(
                    text: 'Doctors available ',
                    margin:
                        EdgeInsets.only(left: 2.h, top: 37.v, right: 133.h))
              ])),
          SizedBox(height: 18.v),
          SizedBox(
              width: 361.h,
              child: Divider(color: appTheme.blueGray900.withOpacity(0.2)))
        ]),
        styleType: Style.bgFill);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
