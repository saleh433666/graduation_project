import 'package:flutter/material.dart';
import 'package:graduation_project/core/utils/size_utils.dart';
import 'package:graduation_project/theme/theme_helper.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargecc5a5a5a => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XCC5A5A5A),
        fontSize: 18.fSize,
      );
  static get bodySmallOnPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodySmallRobotoOnPrimary =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  // Display style
  static get displayMediumSegoeUI => theme.textTheme.displayMedium!.segoeUI;
  // Headline text style
  static get headlineMedium27 => theme.textTheme.headlineMedium!.copyWith(
        fontSize: 27.fSize,
      );
  static get headlineMedium27_1 => theme.textTheme.headlineMedium!.copyWith(
        fontSize: 27.fSize,
      );
  static get headlineMediumBluegray900 =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.blueGray900.withOpacity(0.9),
        fontWeight: FontWeight.w700,
      );
  static get headlineMediumSegoeUIBluegray900 =>
      theme.textTheme.headlineMedium!.segoeUI.copyWith(
        color: appTheme.blueGray900.withOpacity(0.88),
        fontSize: 28.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineMediumSegoeUIBluegray900Bold =>
      theme.textTheme.headlineMedium!.segoeUI.copyWith(
        color: appTheme.blueGray900.withOpacity(0.8),
        fontSize: 28.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineMediumSegoeUIBluegray900Bold28 =>
      theme.textTheme.headlineMedium!.segoeUI.copyWith(
        color: appTheme.blueGray900.withOpacity(0.8),
        fontSize: 28.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineMediumSegoeUIGreen900 =>
      theme.textTheme.headlineMedium!.segoeUI.copyWith(
        color: appTheme.green900,
        fontSize: 28.fSize,
        fontWeight: FontWeight.w700,
      );
  // Label text style
  static get labelLargeBluegray900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray900,
      );
  static get labelLargeGray5001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray5001,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeGray700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray700.withOpacity(0.8),
      );
  static get labelLargeInterGray600 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.gray600,
      );
  static get labelLargeInterWhiteA700 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.whiteA700,
      );
  static get labelLargeWhiteA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  // Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.5),
        fontWeight: FontWeight.w600,
      );
  static get titleLargeGray5001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray5001,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeGray5001Bold => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray5001,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeGray5001SemiBold => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray5001,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeGray5001_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray5001,
      );
  static get titleLargeGray700e5 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray700E5,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeInterGray700 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.gray700.withOpacity(0.8),
      );
  static get titleLargeInterGray700SemiBold =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeInterPrimary =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleLargeOnPrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeOnPrimary22 => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 22.fSize,
      );
  static get titleLargeSegoeUIBluegray900 =>
      theme.textTheme.titleLarge!.segoeUI.copyWith(
        color: appTheme.blueGray900.withOpacity(0.8),
        fontWeight: FontWeight.w600,
      );
  static get titleLargeSegoeUIWhiteA700 =>
      theme.textTheme.titleLarge!.segoeUI.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeWhiteA700_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
      );
  static get titleMediumBluegray500 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray500,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBluegray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900.withOpacity(0.9),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBluegray900Bold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900.withOpacity(0.9),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBluegray900Bold_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900.withOpacity(0.9),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBluegray900Medium =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900.withOpacity(0.9),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGray5001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray5001,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray5001Bold => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray5001,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray700.withOpacity(0.8),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGray700Bold => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray700.withOpacity(0.8),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray700Medium => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray700.withOpacity(0.6),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumInterBlack900 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.black900.withOpacity(0.5),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumInterBluegray900 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.blueGray900,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumInterBluegray90018 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.blueGray900,
        fontSize: 18.fSize,
      );
  static get titleMediumInterGray5001 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray5001,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumInterGray60001 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray60001,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumSegoeUIBluegray900 =>
      theme.textTheme.titleMedium!.segoeUI.copyWith(
        color: appTheme.blueGray900.withOpacity(0.9),
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumWhiteA700Bold => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumWhiteA700Medium =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumcc333333 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XCC333333),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumcc5a5a5a => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XCC5A5A5A),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumcc5a5a5aMedium => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XCC5A5A5A),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBluegray60001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray60001,
      );
  static get titleSmallBluegray70001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray70001,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGray500 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray500,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGray700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray700.withOpacity(0.7),
      );
  static get titleSmallGray700SemiBold => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray700.withOpacity(0.6),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallInter => theme.textTheme.titleSmall!.inter;
  static get titleSmallInterGray700 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.gray700,
        fontSize: 15.fSize,
      );
  static get titleSmallSegoeUIGray500 =>
      theme.textTheme.titleSmall!.segoeUI.copyWith(
        color: appTheme.gray500,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallcc5a5a5a => theme.textTheme.titleSmall!.copyWith(
        color: Color(0XCC5A5A5A),
      );
}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get segoeUI {
    return copyWith(
      fontFamily: 'Segoe UI',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
