import 'package:graduation_project/core/utils/size_utils.dart';
import 'package:graduation_project/localization/app_localization.dart';

import '../../core/app_export.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/navigator_service.dart';
import '../../routes/app_routes.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_image_view.dart';
import 'bloc/tutorialone_bloc.dart';
import 'models/tutorialone_model.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TutorialoneScreen extends StatelessWidget {
  const TutorialoneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<TutorialoneBloc>(
        create: (context) => TutorialoneBloc(
            TutorialoneState(tutorialoneModelObj: TutorialoneModel()))
          ..add(TutorialoneInitialEvent()),
        child: TutorialoneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TutorialoneBloc, TutorialoneState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.h, vertical: 61.v),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 49.v),
                        Text("lbl_welcome".tr,
                            style: CustomTextStyles.displayMediumSegoeUI),
                        SizedBox(height: 57.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgGroup9621,
                            height: 217.v,
                            width: 320.h),
                        SizedBox(height: 39.v),
                        Container(
                            width: 294.h,
                            margin: EdgeInsets.only(left: 11.h, right: 13.h),
                            child: Text("msg_lorem_ipsum_dolor".tr,
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.titleSmallGray500)),
                        Spacer(),
                        _buildTutorialFrame(context)
                      ]))));
    });
  }

  /// Section Widget
  Widget _buildTutorialFrame(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Text("lbl_skip".tr,
                  style: CustomTextStyles.titleSmallBluegray70001)),
          Container(
              height: 5.v,
              margin: EdgeInsets.only(top: 5.v, bottom: 7.v),
              child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 3,
                  effect: ScrollingDotsEffect(
                      spacing: 5,
                      activeDotColor: appTheme.blueGray500,
                      dotColor: appTheme.blueGray100,
                      dotHeight: 5.v,
                      dotWidth: 6.h))),
          GestureDetector(
              onTap: () {
                onTapTxtNext(context);
              },
              child: Text("lbl_next".tr,
                  style: CustomTextStyles.titleSmallBluegray70001))
        ]);
  }

  /// Navigates to the tutorialtwoScreen when the action is triggered.
  onTapTxtNext(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.tutorialtwoScreen,
    );
  }
}
