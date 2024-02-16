import 'package:graduation_project/core/utils/size_utils.dart';
import 'package:graduation_project/localization/app_localization.dart';
import 'package:graduation_project/presentation/book_screen/widgets/userprofilelist_item_widget.dart';

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
import 'bloc/android_large_114_bloc.dart';
import 'models/android_large_114_model.dart';
import 'models/userprofilelist_item_model.dart';
import 'package:flutter/material.dart';

class AndroidLarge114Screen extends StatelessWidget {
  const AndroidLarge114Screen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLarge114Bloc>(
        create: (context) => AndroidLarge114Bloc(AndroidLarge114State(
            androidLarge114ModelObj: AndroidLarge114Model()))
          ..add(AndroidLarge114InitialEvent()),
        child: AndroidLarge114Screen());
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
                child: Column(children: [
                  _buildAppBar(context),
                  Expanded(
                      child: SizedBox(
                          width: double.maxFinite,
                          child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 1.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 15.v),
                                    Padding(
                                        padding: EdgeInsets.only(left: 22.h),
                                        child: Text("lbl_list_of_doctors".tr,
                                            style: CustomTextStyles
                                                .titleMediumInterBluegray90018)),
                                    SizedBox(height: 10.v),
                                    _buildUserProfileList(context)
                                  ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildAppBar(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 11.v),
        decoration: AppDecoration.fillWhiteA,
        child: Column(children: [
          SizedBox(height: 15.v),
          CustomAppBar(
              height: 29.v,
              leadingWidth: 32.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgIconBlueGray900,
                  margin: EdgeInsets.only(left: 23.h, top: 6.v, bottom: 6.v)),
              centerTitle: true,
              title: AppbarSubtitle(text: "lbl_doctors".tr)),
          SizedBox(height: 29.v),
          Padding(
              padding: EdgeInsets.only(left: 20.h, right: 23.h),
              child: BlocSelector<AndroidLarge114Bloc, AndroidLarge114State,
                      TextEditingController?>(
                  selector: (state) => state.searchController,
                  builder: (context, searchController) {
                    return CustomSearchView(
                        controller: searchController,
                        hintText: "lbl_search".tr);
                  }))
        ]));
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return Expanded(
        child: BlocSelector<AndroidLarge114Bloc, AndroidLarge114State,
                AndroidLarge114Model?>(
            selector: (state) => state.androidLarge114ModelObj,
            builder: (context, androidLarge114ModelObj) {
              return ListView.separated(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 11.v);
                  },
                  itemCount:
                      androidLarge114ModelObj?.userprofilelistItemList.length ??
                          0,
                  itemBuilder: (context, index) {
                    UserprofilelistItemModel model = androidLarge114ModelObj
                            ?.userprofilelistItemList[index] ??
                        UserprofilelistItemModel();
                    return UserprofilelistItemWidget(model,
                        onTapUserProfile: () {
                      onTapUserProfile(context);
                    });
                  });
            }));
  }

  /// Navigates to the androidLarge115Screen when the action is triggered.
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
