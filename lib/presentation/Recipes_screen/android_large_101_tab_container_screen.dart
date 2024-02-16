import 'package:graduation_project/core/utils/size_utils.dart';
import 'package:graduation_project/localization/app_localization.dart';

import '../../core/app_export.dart';
import '../../core/utils/image_constant.dart';
import '../../theme/app_decoration.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../RecipesPage/android_large_101_page.dart';
import 'bloc/android_large_101_tab_container_bloc.dart';
import 'models/android_large_101_tab_container_model.dart';
import 'package:flutter/material.dart';

class AndroidLarge101TabContainerScreen extends StatefulWidget {
  const AndroidLarge101TabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AndroidLarge101TabContainerScreenState createState() =>
      AndroidLarge101TabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLarge101TabContainerBloc>(
      create: (context) =>
          AndroidLarge101TabContainerBloc(AndroidLarge101TabContainerState(
        androidLarge101TabContainerModelObj: AndroidLarge101TabContainerModel(),
      ))
            ..add(AndroidLarge101TabContainerInitialEvent()),
      child: AndroidLarge101TabContainerScreen(),
    );
  }
}

class AndroidLarge101TabContainerScreenState
    extends State<AndroidLarge101TabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AndroidLarge101TabContainerBloc,
        AndroidLarge101TabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildAppBar(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: SizedBox(
                        height: 713.v,
                        child: TabBarView(
                          controller: tabviewController,
                          children: [
                            AndroidLarge101Page.builder(context),
                            AndroidLarge101Page.builder(context),
                            AndroidLarge101Page.builder(context),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAppBar(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 9.v),
      decoration: AppDecoration.outlineBlack9001,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 22.v),
          CustomAppBar(
            height: 29.v,
            leadingWidth: 32.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgIconBlueGray900,
              margin: EdgeInsets.only(
                left: 23.h,
                top: 1.v,
                bottom: 11.v,
              ),
            ),
            centerTitle: true,
            title: AppbarSubtitle(
              text: "lbl_fatting_recipes".tr,
            ),
          ),
          SizedBox(height: 31.v),
          Container(
            height: 35.v,
            width: 319.h,
            child: TabBar(
              controller: tabviewController,
              labelPadding: EdgeInsets.zero,
              labelColor: appTheme.whiteA700,
              labelStyle: TextStyle(
                fontSize: 16.fSize,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
              ),
              unselectedLabelColor: theme.colorScheme.primary,
              unselectedLabelStyle: TextStyle(
                fontSize: 16.fSize,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
              ),
              indicator: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadius.circular(
                  16.h,
                ),
              ),
              tabs: [
                Tab(
                  child: Text(
                    "lbl_upcoming".tr,
                  ),
                ),
                Tab(
                  child: Text(
                    "lbl_completed".tr,
                  ),
                ),
                Tab(
                  child: Text(
                    "lbl_completed".tr,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
