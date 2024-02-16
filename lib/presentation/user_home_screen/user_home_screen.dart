import 'package:graduation_project/core/utils/size_utils.dart';
import 'package:graduation_project/localization/app_localization.dart';

import '../../core/app_export.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/navigator_service.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_image_view.dart';
import 'bloc/user_home_bloc.dart';
import 'models/user_home_model.dart';
import 'package:flutter/material.dart';

class UserHomeScreen extends StatelessWidget {
  const UserHomeScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<UserHomeBloc>(
        create: (context) =>
            UserHomeBloc(UserHomeState(userHomeModelObj: UserHomeModel()))
              ..add(UserHomeInitialEvent()),
        child: UserHomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserHomeBloc, UserHomeState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
            drawer: Drawer(
              backgroundColor: Colors.white30,
              child: ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  const DrawerHeader(
                    decoration: BoxDecoration(
                      color:Colors.lightGreen,
                    ),
                    child: Center(
                      child: Text(
                        'Vet Det',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.person),
                    title: const Text('details'),
                    onTap: () {
                      onTapImgLock(context); // Closes the drawer
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.chat),
                    title: const Text('chat'),
                    onTap: () {
                      onTapImgShat(context); // Closes the drawer
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.notification_important),
                    title: const Text('notification'),
                    onTap: () {
                      onTapImgNotification(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.info),
                    title: const Text('info'),
                    onTap: () {
                      onTapImgInfo(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.logout),
                    title: const Text('logout'),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
            appBar: AppBar(
              title: Text('Vet Det',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
              centerTitle: true,
              elevation: 0,
            ),
              backgroundColor: appTheme.whiteA700,
              body: SizedBox(
                  width: double.maxFinite,
                  child: Padding(
                      padding: EdgeInsets.only(right: 24.h),
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        children:[ Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 100),
                                height: 600,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 12.h, vertical: 56.v),
                                  decoration: AppDecoration.fillBluegray60002
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder16),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                      IconButton(onPressed: () {  }, icon:(Icon(Icons.menu_open)),),
                                        Spacer(flex: 43),
                                        IconButton(onPressed: () { onTapImgLock(context);}, icon:(Icon(Icons.person)),),
                                        SizedBox(height: 50.v),
                                        IconButton(onPressed: () { onTapImgShat(context); }, icon:(Icon(Icons.chat)),),
                                        SizedBox(height: 50.v),
                                        IconButton(onPressed: () { onTapImgNotification(context); }, icon:(Icon(Icons.notification_important)),),
                                        SizedBox(height: 50.v),
                                        IconButton(onPressed: () { onTapImgInfo(context); }, icon:(Icon(Icons.info)),),
                                        SizedBox(height: 50.v),
                                        IconButton(onPressed: () {  }, icon:(Icon(Icons.logout)),),
                                        Spacer(flex: 56)
                                      ])),
                              Expanded(
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 30.h, bottom: 32.v),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgTablerLineScan,
                                                height: 24.adaptSize,
                                                width: 24.adaptSize,
                                                margin:
                                                    EdgeInsets.only(left: 17.h)),
                                            SizedBox(height: 5.v),
                                            Align(
                                                alignment: Alignment.centerRight,
                                                child: Container(
                                                    width: 203.h,
                                                    margin: EdgeInsets.only(
                                                        left: 44.h),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text("lbl_subject".tr,
                                                              style: CustomTextStyles
                                                                  .headlineMediumBluegray900),
                                                          Container(
                                                              width: 28.adaptSize,
                                                              margin:
                                                                  EdgeInsets.only(
                                                                      bottom:
                                                                          3.v),
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          4.h,
                                                                      vertical:
                                                                          5.v),
                                                              decoration: AppDecoration
                                                                  .outlineBlueGray
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder4),
                                                              child: Text(
                                                                  "lbl_en".tr,
                                                                  style: CustomTextStyles
                                                                      .titleSmallBluegray60001))
                                                        ]))),
                                            SizedBox(height: 22.v),
                                            SizedBox(
                                                height: 215.v,
                                                width: 219.h,
                                                child: Stack(
                                                    alignment:
                                                    Alignment.bottomRight,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgRectangle722,
                                                          height: 215.v,
                                                          width: 219.h,
                                                          radius:
                                                          BorderRadius.circular(
                                                              16.h),
                                                          alignment:
                                                          Alignment.center,
                                                          onTap: () {
                                                            onTapImgImage(context);
                                                          }),
                                                      Align(
                                                          alignment:
                                                          Alignment.bottomRight,
                                                          child: Padding(
                                                              padding:
                                                              EdgeInsets.only(
                                                                  left: 59.h,
                                                                  right: 46.h,
                                                                  bottom: 7.v),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                                  crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                                  children: [
                                                                    CustomImageView(
                                                                        imagePath:
                                                                        ImageConstant
                                                                            .imgCheckmark,
                                                                        height: 100
                                                                            .adaptSize,
                                                                        width: 100
                                                                            .adaptSize),
                                                                    SizedBox(
                                                                        height:
                                                                        17.v),
                                                                    Text("Schedule",
                                                                        style: theme
                                                                            .textTheme
                                                                            .headlineMedium)
                                                                  ])))
                                                    ])),
                                            SizedBox(height: 22.v),
                                            SizedBox(
                                                height: 215.v,
                                                width: 219.h,
                                                child: Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgRectangle722215x219,
                                                          height: 215.v,
                                                          width: 219.h,
                                                          radius: BorderRadius
                                                              .circular(16.h),
                                                          alignment:
                                                              Alignment.center,
                                                          onTap: () {
                                                            onTapImgImage(
                                                                context);
                                                          }),
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Padding(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          27.h),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    CustomImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgCar,
                                                                        height: 100
                                                                            .adaptSize,
                                                                        width: 100
                                                                            .adaptSize),
                                                                    SizedBox(
                                                                        height:
                                                                            31.v),
                                                                    Text(
                                                                        "lbl_book_doctoor"
                                                                            .tr,
                                                                        style: theme
                                                                            .textTheme
                                                                            .headlineMedium)
                                                                  ])))
                                                    ])),
                                            SizedBox(height: 28.v),
                                            SizedBox(
                                                height: 205.v,
                                                width: 219.h,
                                                child: Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgRectangle723,
                                                          height: 205.v,
                                                          width: 219.h,
                                                          radius: BorderRadius
                                                              .circular(16.h),
                                                          alignment:
                                                              Alignment.center),
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Padding(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          36.h),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    CustomImageView(
                                                                      onTap: (){
                                                                        onTapImgScan(context);
                                                                      },
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgTelevision,
                                                                        height: 100
                                                                            .adaptSize,
                                                                        width: 100
                                                                            .adaptSize),
                                                                    SizedBox(
                                                                        height:
                                                                            16.v),
                                                                    SizedBox(
                                                                        width:
                                                                            147.h,
                                                                        child: Text(
                                                                            "msg_scan_cow_radiology"
                                                                                .tr,
                                                                            maxLines:
                                                                                2,
                                                                            overflow: TextOverflow
                                                                                .ellipsis,
                                                                            textAlign: TextAlign
                                                                                .center,
                                                                            style:
                                                                                CustomTextStyles.headlineMedium27_1))
                                                                  ])))
                                                    ])),
                                            SizedBox(height: 18.v),
                                            SizedBox(
                                                height: 215.v,
                                                width: 219.h,
                                                child: Stack(
                                                    alignment: Alignment.center,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgRectangle724,
                                                          height: 215.v,
                                                          width: 219.h,
                                                          radius: BorderRadius
                                                              .circular(16.h),
                                                          alignment:
                                                              Alignment.center),
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Padding(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          59.h),
                                                              child: InkWell(
                                                                onTap: (){onTapImgRecipes(context);},
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    children: [
                                                                      CustomImageView(
                                                                          imagePath:
                                                                              ImageConstant
                                                                                  .imgTelevisionWhiteA700,
                                                                          height: 100
                                                                              .adaptSize,
                                                                          width: 100
                                                                              .adaptSize),
                                                                      SizedBox(
                                                                          height:
                                                                              33.v),
                                                                      Text(
                                                                          "lbl_recipes"
                                                                              .tr,
                                                                          style: CustomTextStyles
                                                                              .headlineMedium27)
                                                                    ]),
                                                              )))
                                                    ]))
                                          ])))
                            ])],
                      )))));
    });
  }

  /// Navigates to the userEditScreen when the action is triggered.
  onTapImgLock(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.userEditScreen,
    );
  }

  /// Navigates to the androidLarge114Screen when the action is triggered.S
  onTapImgImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.BookScreen,
    );
  }
  onTapImgShat(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.MessageScreen,
    );
  }
  onTapImgScan(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.ScanScreen,
    );
  }
  onTapImgRecipes(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.RecipesPage,
    );
  }
  onTapImgNotification(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.NotificationScreen,
    );
  }
  onTapImgInfo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.infoUserScreen,
    );
  }
}
