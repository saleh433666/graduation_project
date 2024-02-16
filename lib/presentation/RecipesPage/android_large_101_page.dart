import 'package:graduation_project/localization/app_localization.dart';

import '../../core/app_export.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/theme_helper.dart';
import '../../widgets/custom_image_view.dart';
import 'bloc/android_large_101_bloc.dart';
import 'models/android_large_101_model.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AndroidLarge101Page extends StatefulWidget {
  const AndroidLarge101Page({Key? key})
      : super(
          key: key,
        );

  @override
  AndroidLarge101PageState createState() => AndroidLarge101PageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<AndroidLarge101Bloc>(
      create: (context) => AndroidLarge101Bloc(AndroidLarge101State(
        androidLarge101ModelObj: AndroidLarge101Model(),
      ))
        ..add(AndroidLarge101InitialEvent()),
      child: AndroidLarge101Page(),
    );
  }
}

class AndroidLarge101PageState extends State<AndroidLarge101Page>
    with AutomaticKeepAliveClientMixin<AndroidLarge101Page> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AndroidLarge101Bloc, AndroidLarge101State>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            body: SizedBox(
              width: SizeUtils.width,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 9.v),
                    Column(
                      children: [
                        _buildRecipeNameRow(
                          context,
                          recipeName: "lbl_reccipe_name".tr,
                        ),
                        SizedBox(height: 3.v),
                        _buildRecipeNameRow(
                          context,
                          recipeName: "lbl_reccipe_name".tr,
                        ),
                        SizedBox(height: 3.v),
                        _buildRecipeNameRow(
                          context,
                          recipeName: "lbl_reccipe_name".tr,
                        ),
                        SizedBox(height: 3.v),
                        _buildRecipeNameRow(
                          context,
                          recipeName: "lbl_reccipe_name".tr,
                        ),
                        SizedBox(height: 3.v),
                        _buildRecipeNameRow(
                          context,
                          recipeName: "lbl_reccipe_name".tr,
                        ),
                        SizedBox(height: 3.v),
                        _buildRecipeNameRow(
                          context,
                          recipeName: "lbl_reccipe_name".tr,
                        ),
                        SizedBox(height: 3.v),
                        _buildRecipeNameRow(
                          context,
                          recipeName: "lbl_reccipe_name".tr,
                        ),
                        SizedBox(height: 3.v),
                        _buildRecipeNameRow(
                          context,
                          recipeName: "lbl_reccipe_name".tr,
                        ),
                        SizedBox(height: 3.v),
                        _buildRecipeNameRow(
                          context,
                          recipeName: "lbl_reccipe_name".tr,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Common widget
  Widget _buildRecipeNameRow(
    BuildContext context, {
    required String recipeName,
  }) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.outlineBlack900,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 9.v,
              bottom: 7.v,
            ),
            child: Text(
              recipeName,
              style: theme.textTheme.titleMedium!.copyWith(
                color: theme.colorScheme.primary,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCheckmarkPrimary,
            height: 36.adaptSize,
            width: 36.adaptSize,
            margin: EdgeInsets.only(right: 1.h),
          ),
        ],
      ),
    );
  }
}
