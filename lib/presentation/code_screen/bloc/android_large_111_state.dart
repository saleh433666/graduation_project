// ignore_for_file: must_be_immutable

part of 'android_large_111_bloc.dart';

/// Represents the state of AndroidLarge111 in the application.
class AndroidLarge111State extends Equatable {
  AndroidLarge111State({
    this.enterCodeController,
    this.androidLarge111ModelObj,
  });

  TextEditingController? enterCodeController;

  AndroidLarge111Model? androidLarge111ModelObj;

  @override
  List<Object?> get props => [
        enterCodeController,
        androidLarge111ModelObj,
      ];
  AndroidLarge111State copyWith({
    TextEditingController? enterCodeController,
    AndroidLarge111Model? androidLarge111ModelObj,
  }) {
    return AndroidLarge111State(
      enterCodeController: enterCodeController ?? this.enterCodeController,
      androidLarge111ModelObj:
          androidLarge111ModelObj ?? this.androidLarge111ModelObj,
    );
  }
}
