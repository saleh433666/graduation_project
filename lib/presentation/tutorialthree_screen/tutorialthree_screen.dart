import 'package:graduation_project/core/utils/size_utils.dart';
import 'package:graduation_project/localization/app_localization.dart';

import '../../core/app_export.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/navigator_service.dart';
import '../../routes/app_routes.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_image_view.dart';
import 'bloc/tutorialthree_bloc.dart';
import 'models/tutorialthree_model.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TutorialthreeScreen extends StatelessWidget {
  const TutorialthreeScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<TutorialthreeBloc>(
        create: (context) => TutorialthreeBloc(
            TutorialthreeState(tutorialthreeModelObj: TutorialthreeModel()))
          ..add(TutorialthreeInitialEvent()),
        child: TutorialthreeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TutorialthreeBloc, TutorialthreeState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 19.h, vertical: 59.v),
                  child: Column(children: [
                    Spacer(flex: 42),
                    CustomImageView(
                        imagePath: ImageConstant.imgGroup9632,
                        height: 280.v,
                        width: 302.h,
                        alignment: Alignment.centerRight),
                    SizedBox(height: 39.v),
                    Container(
                        width: 294.h,
                        margin: EdgeInsets.only(left: 13.h, right: 14.h),
                        child: Text("msg_lorem_ipsum_dolor".tr,
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.titleSmallGray500)),
                    Spacer(flex: 57),
                    _buildTutorialFrame(context)
                  ]))));
    });
  }

  /// Section Widget
  Widget _buildTutorialFrame(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 3.h),
        child: Row(
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
            ]));
  }

  /// Navigates to the androidLarge105Screen when the action is triggered.
  onTapTxtNext(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.ChoseViewScreen,
    );
  }
}
