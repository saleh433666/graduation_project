import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/size_utils.dart';

import '../../theme/theme_helper.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
  }) : super(
          key: key,
        );

  final double? height;

  final Style? styleType;

  final double? leadingWidth;

  final Widget? leading;

  final Widget? title;

  final bool? centerTitle;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? 56.v,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        SizeUtils.width,
        height ?? 56.v,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgShadow_2:
        return Container(
          height: 84.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: appTheme.gray50,
            boxShadow: [
              BoxShadow(
                color: appTheme.black900.withOpacity(0.05),
                spreadRadius: 2.h,
                blurRadius: 2.h,
                offset: Offset(
                  0,
                  1,
                ),
              ),
            ],
          ),
        );
      case Style.bgShadow:
        return Container(
          height: 84.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: appTheme.gray5001,
            boxShadow: [
              BoxShadow(
                color: appTheme.black900.withOpacity(0.05),
                spreadRadius: 2.h,
                blurRadius: 2.h,
                offset: Offset(
                  0,
                  1,
                ),
              ),
            ],
          ),
        );
      case Style.bgShadow_1:
        return Container(
          height: 84.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: appTheme.gray50,
            boxShadow: [
              BoxShadow(
                color: appTheme.black900.withOpacity(0.15),
                spreadRadius: 2.h,
                blurRadius: 2.h,
                offset: Offset(
                  0,
                  4,
                ),
              ),
            ],
          ),
        );
      case Style.bgFill:
        return Stack(
          children: [
            Container(
              height: 66.v,
              width: double.maxFinite,
              margin: EdgeInsets.only(
                left: 1.h,
                bottom: 19.v,
              ),
              decoration: BoxDecoration(
                color: appTheme.gray50,
              ),
            ),
            Container(
              height: 1.v,
              width: 361.h,
              margin: EdgeInsets.only(top: 84.15.v),
              decoration: BoxDecoration(
                color: appTheme.blueGray900.withOpacity(0.2),
              ),
            ),
          ],
        );
      default:
        return null;
    }
  }
}

enum Style {
  bgShadow_2,
  bgShadow,
  bgShadow_1,
  bgFill,
}
