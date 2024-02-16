import 'package:flutter/material.dart';
import '../presentation/Recipes_screen/android_large_101_tab_container_screen.dart';

import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/appointment_screen/android_large_115_screen.dart';
import '../presentation/book_screen/android_large_114_screen.dart';
import '../presentation/booked_screen/android_large_118_screen.dart';
import '../presentation/chat_screen/android_large_ninety_screen.dart';
import '../presentation/chose_view_screen/android_large_105_screen.dart';
import '../presentation/code_screen/android_large_111_screen.dart';
import '../presentation/diagonsies_screen/android_large_ninetyeight_screen.dart';
import '../presentation/doctor_screen/doctor_screen.dart';
import '../presentation/frame_1000002323_screen/frame_1000002323_screen.dart';
import '../presentation/info_user_screen/info_user_screen.dart';
import '../presentation/message_screen/android_large_124_screen.dart';
import '../presentation/new_pass_screen/android_large_112_screen.dart';
import '../presentation/notification_screen/android_large_120_screen.dart';
import '../presentation/pass_reset_screen/android_large_113_screen.dart';
import '../presentation/payment_screen/android_large_119_screen.dart';
import '../presentation/reset_pass_screen/android_large_110_screen.dart';
import '../presentation/scan_screen/android_large_seventyfour_screen.dart';
import '../presentation/signin_screen/android_large_107_screen.dart';
import '../presentation/signup_screen/android_large_109_screen.dart';
import '../presentation/splash_screen/splash_screen.dart';
import '../presentation/tutorialone_screen/tutorialone_screen.dart';
import '../presentation/tutorialthree_screen/tutorialthree_screen.dart';
import '../presentation/tutorialtwo_screen/tutorialtwo_screen.dart';
import '../presentation/user_edit_screen/user_edit_screen.dart';
import '../presentation/user_home_one_screen/user_home_one_screen.dart';
import '../presentation/user_home_screen/user_home_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String doctorScreen = '/doctor_screen';

  static const String tutorialoneScreen = '/tutorialone_screen';

  static const String tutorialtwoScreen = '/tutorialtwo_screen';

  static const String tutorialthreeScreen = '/tutorialthree_screen';

  static const String ChoseViewScreen = '/android_large_105_screen';

  static const String SignInScreen = '/android_large_107_screen';

  static const String SingUpScreen = '/android_large_109_screen';

  static const String ResetPassScreen = '/android_large_110_screen';

  static const String CodeScreen = '/android_large_111_screen';

  static const String NewPassScreen = '/android_large_112_screen';

  static const String PassResetScreen = '/android_large_113_screen';

  static const String ScanScreen =
      '/android_large_seventyfour_screen';

  static const String DiagonsiesScreen =
      '/android_large_ninetyeight_screen';

  static const String userEditScreen = '/user_edit_screen';

  static const String userHomeOneScreen = '/user_home_one_screen';

  static const String ChatScreen = '/android_large_ninety_screen';

  static const String userHomeScreen = '/user_home_screen';

  static const String CalenderScreen = '/frame_1000002323_screen';

  static const String MessageScreen = '/android_large_124_screen';

  static const String Recipes1Page = '/android_large_101_page';

  static const String RecipesPage =
      '/android_large_101_tab_container_screen';

  static const String BookScreen = '/android_large_114_screen';

  static const String BookedScreen = '/android_large_118_screen';

  static const String AppointmentScreen = '/android_large_115_screen';

  static const String PaymentScreen = '/android_large_119_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';
  static const String infoUserScreen = '/info_user_screen';

  static const String NotificationScreen = '/android_large_120_screen';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        doctorScreen: DoctorScreen.builder,
        tutorialoneScreen: TutorialoneScreen.builder,
        tutorialtwoScreen: TutorialtwoScreen.builder,
        tutorialthreeScreen: TutorialthreeScreen.builder,
    ChoseViewScreen: AndroidLarge105Screen.builder,
    SignInScreen: AndroidLarge107Screen.builder,
    SingUpScreen: AndroidLarge109Screen.builder,
    ResetPassScreen: AndroidLarge110Screen.builder,
    CodeScreen: AndroidLarge111Screen.builder,
    NewPassScreen: AndroidLarge112Screen.builder,
    PassResetScreen: AndroidLarge113Screen.builder,
    ScanScreen: AndroidLargeSeventyfourScreen.builder,
    DiagonsiesScreen: AndroidLargeNinetyeightScreen.builder,
        userEditScreen: UserEditScreen.builder,
        userHomeOneScreen: UserHomeOneScreen.builder,
    ChatScreen: AndroidLargeNinetyScreen.builder,
        userHomeScreen: UserHomeScreen.builder,
    CalenderScreen: Frame1000002323Screen.builder,
    MessageScreen: AndroidLarge124Screen.builder,
    RecipesPage:
            AndroidLarge101TabContainerScreen.builder,
    BookScreen: AndroidLarge114Screen.builder,
    BookedScreen: AndroidLarge118Screen.builder,
    AppointmentScreen: AndroidLarge115Screen.builder,
    PaymentScreen: AndroidLarge119Screen.builder,
    infoUserScreen: InfoUserScreen.builder,
    NotificationScreen: AndroidLarge120Screen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
