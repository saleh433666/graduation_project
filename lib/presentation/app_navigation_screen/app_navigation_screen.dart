import 'package:graduation_project/core/utils/size_utils.dart';
import 'package:graduation_project/localization/app_localization.dart';

import '../../core/app_export.dart';
import '../../core/utils/navigator_service.dart';
import '../../routes/app_routes.dart';
import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: 375.h,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "Splash screen".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.splashScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "doctor".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.doctorScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "TutorialOne".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.tutorialoneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "TutorialTwo".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.tutorialtwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "TutorialThree".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.tutorialthreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Android Large - 105".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.ChoseViewScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Android Large - 107".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.SignInScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Android Large - 109".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.SingUpScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Android Large - 110".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.ResetPassScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Android Large - 111".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.CodeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Android Large - 112".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.NewPassScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Android Large - 113".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.PassResetScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Android Large - SeventyFour".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.ScanScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Android Large - NinetyEight".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.DiagonsiesScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "user edit".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.userEditScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "user home One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.userHomeOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Android Large - Ninety".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.ChatScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "user home".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.userHomeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Frame 1000002323".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.CalenderScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Android Large - 124".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.MessageScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "Android Large - 101 - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.RecipesPage),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Android Large - 114".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.BookScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Android Large - 118".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.BookedScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Android Large - 115".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.AppointmentScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Android Large - 119".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.PaymentScreen),
                            ),
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
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
