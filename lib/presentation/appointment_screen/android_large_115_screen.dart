import 'package:graduation_project/core/utils/size_utils.dart';
import 'package:graduation_project/localization/app_localization.dart';

import '../../core/app_export.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/navigator_service.dart';
import '../../routes/app_routes.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_image_view.dart';
import 'bloc/android_large_115_bloc.dart';
import 'models/android_large_115_model.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';


class AndroidLarge115Screen extends StatelessWidget {
  const AndroidLarge115Screen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLarge115Bloc>(
        create: (context) => AndroidLarge115Bloc(AndroidLarge115State(
            androidLarge115ModelObj: AndroidLarge115Model()))
          ..add(AndroidLarge115InitialEvent()),
        child: AndroidLarge115Screen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 14.v),
                child: Column(children: [
                  SizedBox(height: 9.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              margin: EdgeInsets.only(bottom: 5.v),
                              padding: EdgeInsets.symmetric(horizontal: 17.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _buildDrAndrew(context),
                                    SizedBox(height: 46.v),
                                    Text("lbl_biography".tr,
                                        style: CustomTextStyles
                                            .titleLargeOnPrimary),
                                    SizedBox(height: 14.v),
                                    Container(
                                        width: 262.h,
                                        margin: EdgeInsets.only(
                                            left: 4.h, right: 57.h),
                                        child: Text(
                                            "msg_i_am_an_experienced".tr,
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .bodySmallOnPrimary)),
                                    SizedBox(height: 46.v),
                                    Text("msg_select_day_and_time".tr,
                                        style: CustomTextStyles
                                            .titleLargeOnPrimary),
                                    SizedBox(height: 11.v),
                                    _buildCalendar(context)
                                  ]))))
                ])),
            bottomNavigationBar: _buildBook(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 32.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgIconBlueGray900,
            margin: EdgeInsets.only(left: 23.h, top: 18.v, bottom: 21.v)),
        centerTitle: true,
        title: AppbarSubtitle(text: "lbl_appointment".tr));
  }

  /// Section Widget
  Widget _buildDrAndrew(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 3.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomImageView(
              imagePath: ImageConstant.imgIcOutlineImage100x110,
              height: 100.v,
              width: 110.h,
              radius: BorderRadius.circular(46.h),
              margin: EdgeInsets.only(bottom: 2.v)),
          Padding(
              padding: EdgeInsets.only(top: 12.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("lbl_dr_andrew".tr,
                        style: CustomTextStyles.titleLargeOnPrimary22),
                    SizedBox(height: 18.v),
                    Container(
                        width: 188.h,
                        margin: EdgeInsets.only(left: 4.h),
                        child: Text("msg_dr_andrew_is_an2".tr,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodySmallRobotoOnPrimary))
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildCalendar(BuildContext context) {
    return BlocBuilder<AndroidLarge115Bloc, AndroidLarge115State>(
        builder: (context, state) {
      return Container(
          height: 274.v,
          width: 309.h,
          margin: EdgeInsets.only(left: 9.h),
          child: CalendarDatePicker2(
              config: CalendarDatePicker2Config(
                  calendarType: CalendarDatePicker2Type.single,
                  firstDate: DateTime(DateTime.now().year - 5),
                  lastDate: DateTime(DateTime.now().year + 5),
                  selectedDayHighlightColor: Color(0XB2519273),
                  centerAlignModePicker: true,
                  firstDayOfWeek: 0,
                  controlsHeight: 22,
                  selectedDayTextStyle: TextStyle(
                      color: Color(0X7F000000),
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w600),
                  controlsTextStyle: TextStyle(
                      color: appTheme.black900,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w600),
                  dayTextStyle: TextStyle(
                      color: appTheme.black900.withOpacity(0.5),
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w600),
                  dayBorderRadius: BorderRadius.circular(13.5.h)),
              value: state.selectedDatesFromCalendar1 ?? [],
              onValueChanged: (dates) {
                state.selectedDatesFromCalendar1 = dates;
              }));
    });
  }

  /// Section Widget
  Widget _buildBook(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 17.h, right: 22.h, bottom: 36.v),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomIconButton(
              height: 48.v,
              width: 40.h,
              padding: EdgeInsets.all(10.h),
              child: CustomImageView(
                  imagePath: ImageConstant.imgMdiCardsHeartOutline)),
          Expanded(
              child: CustomElevatedButton(
                  height: 48.v,
                  text: "msg_book_an_appointment".tr,
                  margin: EdgeInsets.only(left: 17.h),
                  buttonTextStyle: CustomTextStyles.titleMediumWhiteA700,
                  onPressed: () {
                    onTapBookAnAppointment(context);
                  }))
        ]));
  }

  /// Navigates to the androidLarge119Screen when the action is triggered.
  onTapBookAnAppointment(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.PaymentScreen,
    );
  }
}
