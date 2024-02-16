import 'package:graduation_project/core/utils/size_utils.dart';
import 'package:graduation_project/localization/app_localization.dart';
import 'package:graduation_project/presentation/booked_screen/widgets/userprofilelist1_item_widget.dart';

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
import '../../widgets/custom_search_view.dart';
import 'bloc/android_large_118_bloc.dart';
import 'models/android_large_118_model.dart';
import 'models/userprofilelist1_item_model.dart';
import 'package:flutter/material.dart';

class AndroidLarge118Screen extends StatelessWidget {
  const AndroidLarge118Screen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLarge118Bloc>(
      create: (context) => AndroidLarge118Bloc(AndroidLarge118State(
        androidLarge118ModelObj: AndroidLarge118Model(),
      ))
        ..add(AndroidLarge118InitialEvent()),
      child: AndroidLarge118Screen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () {onTapImgShat(context);},child: Icon(Icons.chat)),
        appBar: AppBar(),
        drawer:  Drawer(
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
                leading: const Icon(Icons.home),
                title: const Text('home'),
                onTap: () {
                  onTapHome(context); // Closes the drawer
                },
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
        backgroundColor: appTheme.whiteA700,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppBar(context),
              Expanded(
                child: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 2.v),
                      Padding(
                        padding: EdgeInsets.only(left: 22.h),
                        child: Text(
                          "lbl_list_of_doctors".tr,
                          style: CustomTextStyles.titleMediumInterBluegray90018,
                        ),
                      ),
                      SizedBox(height: 10.v),
                      _buildUserProfileList(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppBar(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 4.h),
      padding: EdgeInsets.symmetric(vertical: 23.v),
      decoration: AppDecoration.fillWhiteA,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          CustomAppBar(
            height: 29.v,
            leadingWidth: 32.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgIconBlueGray900,
              margin: EdgeInsets.only(
                left: 23.h,
                top: 6.v,
                bottom: 6.v,
              ),
            ),
            centerTitle: true,
            title: AppbarSubtitle(
              text: "lbl_doctors".tr,
            ),
          ),
          SizedBox(height: 29.v),
          Padding(
            padding: EdgeInsets.only(
              left: 19.h,
              right: 20.h,
            ),
            child: BlocSelector<AndroidLarge118Bloc, AndroidLarge118State,
                TextEditingController?>(
              selector: (state) => state.searchController,
              builder: (context, searchController) {
                return CustomSearchView(
                  controller: searchController,
                  hintText: "lbl_search".tr,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 2.h),
        child: BlocSelector<AndroidLarge118Bloc, AndroidLarge118State,
            AndroidLarge118Model?>(
          selector: (state) => state.androidLarge118ModelObj,
          builder: (context, androidLarge118ModelObj) {
            return ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 11.v,
                );
              },
              itemCount:
                  androidLarge118ModelObj?.userprofilelist1ItemList.length ?? 0,
              itemBuilder: (context, index) {
                Userprofilelist1ItemModel model =
                    androidLarge118ModelObj?.userprofilelist1ItemList[index] ??
                        Userprofilelist1ItemModel();
                return Userprofilelist1ItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }
  onTapUserProfile(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.AppointmentScreen,
    );
  }
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
  onTapImgLock(BuildContext context) {
    NavigatorService.popAndPushNamed(
      AppRoutes.userEditScreen,
    );
  }
  onTapHome(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.userHomeScreen,
    );
  }
}
