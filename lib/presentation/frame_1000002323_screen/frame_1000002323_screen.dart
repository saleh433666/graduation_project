import 'package:graduation_project/core/utils/size_utils.dart';
import 'package:graduation_project/localization/app_localization.dart';

import '../../core/app_export.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import 'bloc/frame_1000002323_bloc.dart';
import 'models/frame_1000002323_model.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';

class Frame1000002323Screen extends StatelessWidget {
  const Frame1000002323Screen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Frame1000002323Bloc>(
      create: (context) => Frame1000002323Bloc(Frame1000002323State(
        frame1000002323ModelObj: Frame1000002323Model(),
      ))
        ..add(Frame1000002323InitialEvent()),
      child: Frame1000002323Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 259.h,
          padding: EdgeInsets.symmetric(vertical: 20.v),
          child: Column(
            children: [
              SizedBox(height: 54.v),
              Container(
                width: 259.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 9.h,
                  vertical: 19.v,
                ),
                decoration: AppDecoration.fillWhiteA.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "msg_select_day_and_time".tr,
                      style: CustomTextStyles.titleMediumBluegray900Bold_1,
                    ),
                    SizedBox(height: 8.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 99.h),
                        child: Text(
                          "lbl_july".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                    ),
                    SizedBox(height: 21.v),
                    _buildCalendar(context),
                    SizedBox(height: 19.v),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCalendar(BuildContext context) {
    return BlocBuilder<Frame1000002323Bloc, Frame1000002323State>(
      builder: (context, state) {
        return SizedBox(
          height: 184.v,
          width: 233.h,
          child: CalendarDatePicker2(
            config: CalendarDatePicker2Config(
              calendarType: CalendarDatePicker2Type.single,
              firstDate: DateTime(DateTime.now().year - 5),
              lastDate: DateTime(DateTime.now().year + 5),
              firstDayOfWeek: 0,
              dayTextStyle: TextStyle(
                color: appTheme.black900.withOpacity(0.5),
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
            ),
            value: state.selectedDatesFromCalendar1 ?? [],
            onValueChanged: (dates) {
              state.selectedDatesFromCalendar1 = dates;
            },
          ),
        );
      },
    );
  }
}
