import 'package:graduation_project/core/utils/size_utils.dart';
import 'package:graduation_project/localization/app_localization.dart';

import '../../core/app_export.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/navigator_service.dart';
import '../../routes/app_routes.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_image_view.dart';
import 'bloc/tutorialtwo_bloc.dart';
import 'models/tutorialtwo_model.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TutorialtwoScreen extends StatelessWidget {
  const TutorialtwoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<TutorialtwoBloc>(
        create: (context) => TutorialtwoBloc(
            TutorialtwoState(tutorialtwoModelObj: TutorialtwoModel()))
          ..add(TutorialtwoInitialEvent()),
        child: TutorialtwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TutorialtwoBloc, TutorialtwoState>(
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
                        Spacer(flex: 44),
                        CustomImageView(
                            imagePath: '',
                            height: 256.v,
                            width: 287.h),
                        SizedBox(height: 39.v),
                        Container(
                            width: 294.h,
                            margin: EdgeInsets.only(left: 11.h, right: 13.h),
                            child: Text("msg_lorem_ipsum_dolor".tr,
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.titleSmallGray500)),
                        Spacer(flex: 55),
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

  /// Navigates to the tutorialthreeScreen when the action is triggered.
  onTapTxtNext(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.tutorialthreeScreen,
    );
  }
}
