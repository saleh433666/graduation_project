// ignore_for_file: must_be_immutable

part of 'android_large_ninety_bloc.dart';

/// Represents the state of AndroidLargeNinety in the application.
class AndroidLargeNinetyState extends Equatable {
  AndroidLargeNinetyState({
    this.messageController,
    this.androidLargeNinetyModelObj,
  });

  TextEditingController? messageController;

  AndroidLargeNinetyModel? androidLargeNinetyModelObj;

  @override
  List<Object?> get props => [
        messageController,
        androidLargeNinetyModelObj,
      ];
  AndroidLargeNinetyState copyWith({
    TextEditingController? messageController,
    AndroidLargeNinetyModel? androidLargeNinetyModelObj,
  }) {
    return AndroidLargeNinetyState(
      messageController: messageController ?? this.messageController,
      androidLargeNinetyModelObj:
          androidLargeNinetyModelObj ?? this.androidLargeNinetyModelObj,
    );
  }
}
