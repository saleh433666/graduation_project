
import 'dart:io';

import 'package:graduation_project/localization/app_localization.dart';
import 'package:image_picker/image_picker.dart';

import '../../core/app_export.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/navigator_service.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/custom_text_style.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/android_large_seventyfour_bloc.dart';
import 'models/android_large_seventyfour_model.dart';
import 'package:flutter/material.dart';

class AndroidLargeSeventyfourScreen extends StatefulWidget {
 const  AndroidLargeSeventyfourScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLargeSeventyfourBloc>(
        create: (context) => AndroidLargeSeventyfourBloc(
            AndroidLargeSeventyfourState(
                androidLargeSeventyfourModelObj:
                    AndroidLargeSeventyfourModel()))
          ..add(AndroidLargeSeventyfourInitialEvent()),
        child: AndroidLargeSeventyfourScreen());
  }

  @override
  State<AndroidLargeSeventyfourScreen> createState() => _AndroidLargeSeventyfourScreenState();
}

class _AndroidLargeSeventyfourScreenState extends State<AndroidLargeSeventyfourScreen> {
File ? _selectedImage;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AndroidLargeSeventyfourBloc,
        AndroidLargeSeventyfourState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              extendBody: true,
              extendBodyBehindAppBar: true,
              backgroundColor: appTheme.whiteA700,
              appBar: _buildAppBar(context),
              body: Container(
                  width: SizeUtils.width,
                  height: SizeUtils.height,
                  decoration: BoxDecoration(
                      color: appTheme.whiteA700,
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgGroup117),
                          fit: BoxFit.cover)),
                  child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(vertical: 25.v),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        SizedBox(height: 28.v),
                        SizedBox(
                            width: 224.h,
                            child: Text("msg_please_scan_or".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles
                                    .titleLargeSegoeUIWhiteA700)),
                        Spacer()
                      ]))),
              bottomNavigationBar: _buildThreeRow(context)));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 359.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgIconWhiteA700,
            margin: EdgeInsets.fromLTRB(25.h, 19.v, 325.h, 20.v)));
  }

  /// Section Widget
  Widget _buildThreeRow(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 31.h, right: 81.h, bottom: 39.v),
        decoration: AppDecoration.fillGreen10059
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Row(mainAxisSize: MainAxisSize.min, children: [
          CustomElevatedButton(
              height: 50.v,
              width: 143.h,
              text: "lbl_scan".tr,
              buttonStyle: CustomButtonStyles.fillPrimaryTL10,
              buttonTextStyle: CustomTextStyles.titleLargeWhiteA700,
              onPressed: () {
                _camera();
                onTapScan(context);
              }),
          Padding(
              padding: EdgeInsets.only(left: 41.h, top: 13.v, bottom: 12.v),
              child: InkWell(
                onTap: _gallery,
                child: Text("lbl_upload".tr,
                    style: CustomTextStyles.titleLargeWhiteA700),
              ))
        ]));
  }

  /// Navigates to the androidLargeNinetyeightScreen when the action is triggered.
  onTapScan(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.DiagonsiesScreen,
    );
  }
  Future _gallery ()async{
final imge=await ImagePicker().pickImage(source: ImageSource.gallery);
if(imge==null)return;
setState(() {
  _selectedImage = File(imge.path);
});
  }
Future _camera ()async{
  final imge=await ImagePicker().pickImage(source: ImageSource.camera);
  if(imge==null)return;
  setState(() {
    _selectedImage = File(imge.path);
  });
}
}
