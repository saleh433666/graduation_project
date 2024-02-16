import 'package:graduation_project/core/utils/size_utils.dart';
import 'package:graduation_project/localization/app_localization.dart';

import '../../core/app_export.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/navigator_service.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/android_large_ninetyeight_bloc.dart';
import 'models/android_large_ninetyeight_model.dart';
import 'package:flutter/material.dart';

class AndroidLargeNinetyeightScreen extends StatelessWidget {
  const AndroidLargeNinetyeightScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeNinetyeightBloc>(
        create: (context) => AndroidLargeNinetyeightBloc(
            AndroidLargeNinetyeightState(
                androidLargeNinetyeightModelObj:
                    AndroidLargeNinetyeightModel()))
          ..add(AndroidLargeNinetyeightInitialEvent()),
        child: AndroidLargeNinetyeightScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AndroidLargeNinetyeightBloc,
        AndroidLargeNinetyeightState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: SizedBox(
                  width: double.maxFinite,
                  child: ListView(
                    children: [Column(children: [
                      _buildViewRow(context),
                      _buildStateDescription(context),
                      Container(
                          height: 484.v,
                          width: double.maxFinite,
                          padding: EdgeInsets.symmetric(
                              horizontal: 25.h, vertical: 17.v),
                          decoration: AppDecoration.fillGray50,
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(right: 127.h),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("msg_treatment_method".tr,
                                              style: CustomTextStyles
                                                  .titleLargeSegoeUIBluegray900),
                                          SizedBox(height: 10.v),
                                          Container(
                                              width: 8.h,
                                              margin: EdgeInsets.only(left: 10.h),
                                              child: Text("msg2".tr,
                                                  maxLines: 11,
                                                  overflow: TextOverflow.ellipsis,
                                                  style: CustomTextStyles
                                                      .titleLargeGray700e5
                                                      .copyWith(height: 1.75)))
                                        ]))),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 56.h, bottom: 11.v),
                                    child: InkWell(
                                      onTap: (){onTapImgProfile(context);},
                                      child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                           Icon(Icons.person_search,size: 22,),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 6.h),
                                                child: Text(
                                                    "msg_contact_with_doctor".tr,
                                                    style: CustomTextStyles
                                                        .titleMediumSegoeUIBluegray900))
                                          ]),
                                    )))
                          ]))
                    ])],
                  ))));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 84.v,
        leadingWidth: 39.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgIconBlueGray900,
            margin: EdgeInsets.only(left: 30.h, top: 42.v, bottom: 26.v)),
        centerTitle: true,
        title: AppbarSubtitle(
            text: "lbl_diagonsies".tr,
            margin: EdgeInsets.only(top: 39.v, bottom: 15.v)),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildViewRow(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 12.v),
        decoration: AppDecoration.fillGray50,
        child: Row(children: [
          Container(
              height: 73.v,
              width: 80.h,
              decoration: BoxDecoration(
                  color: appTheme.blueGray100,
                  borderRadius: BorderRadius.circular(10.h))),
          Padding(
              padding: EdgeInsets.only(left: 12.h, top: 27.v, bottom: 19.v),
              child: Text("lbl_disease_name".tr,
                  style: CustomTextStyles.titleLargeSegoeUIBluegray900))
        ]));
  }

  /// Section Widget
  Widget _buildStateDescription(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 19.v),
        decoration: AppDecoration.fillGray50,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("lbl_state_descition".tr,
                  style: CustomTextStyles.titleLargeSegoeUIBluegray900),
              SizedBox(height: 4.v),
              Container(
                  width: 285.h,
                  margin: EdgeInsets.only(left: 5.h, right: 29.h),
                  child: Text("msg".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleLargeGray700e5)),
              SizedBox(height: 4.v)
            ]));
  }

  /// Navigates to the androidLarge114Screen when the action is triggered.
  onTapImgProfile(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.BookScreen,
    );
  }
}
