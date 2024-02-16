// ignore_for_file: must_be_immutable

part of 'android_large_101_tab_container_bloc.dart';

/// Represents the state of AndroidLarge101TabContainer in the application.
class AndroidLarge101TabContainerState extends Equatable {
  AndroidLarge101TabContainerState({this.androidLarge101TabContainerModelObj});

  AndroidLarge101TabContainerModel? androidLarge101TabContainerModelObj;

  @override
  List<Object?> get props => [
        androidLarge101TabContainerModelObj,
      ];
  AndroidLarge101TabContainerState copyWith(
      {AndroidLarge101TabContainerModel? androidLarge101TabContainerModelObj}) {
    return AndroidLarge101TabContainerState(
      androidLarge101TabContainerModelObj:
          androidLarge101TabContainerModelObj ??
              this.androidLarge101TabContainerModelObj,
    );
  }
}
