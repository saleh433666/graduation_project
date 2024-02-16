// ignore_for_file: must_be_immutable

part of 'android_large_119_bloc.dart';

/// Represents the state of AndroidLarge119 in the application.
class AndroidLarge119State extends Equatable {
  AndroidLarge119State({
    this.cardNumberEditTextController,
    this.nameEditTextController,
    this.dateEditTextController,
    this.zipcodeEditTextController,
    this.rememberMeCheckBox = false,
    this.androidLarge119ModelObj,
  });

  TextEditingController? cardNumberEditTextController;

  TextEditingController? nameEditTextController;

  TextEditingController? dateEditTextController;

  TextEditingController? zipcodeEditTextController;

  AndroidLarge119Model? androidLarge119ModelObj;

  bool rememberMeCheckBox;

  @override
  List<Object?> get props => [
        cardNumberEditTextController,
        nameEditTextController,
        dateEditTextController,
        zipcodeEditTextController,
        rememberMeCheckBox,
        androidLarge119ModelObj,
      ];
  AndroidLarge119State copyWith({
    TextEditingController? cardNumberEditTextController,
    TextEditingController? nameEditTextController,
    TextEditingController? dateEditTextController,
    TextEditingController? zipcodeEditTextController,
    bool? rememberMeCheckBox,
    AndroidLarge119Model? androidLarge119ModelObj,
  }) {
    return AndroidLarge119State(
      cardNumberEditTextController:
          cardNumberEditTextController ?? this.cardNumberEditTextController,
      nameEditTextController:
          nameEditTextController ?? this.nameEditTextController,
      dateEditTextController:
          dateEditTextController ?? this.dateEditTextController,
      zipcodeEditTextController:
          zipcodeEditTextController ?? this.zipcodeEditTextController,
      rememberMeCheckBox: rememberMeCheckBox ?? this.rememberMeCheckBox,
      androidLarge119ModelObj:
          androidLarge119ModelObj ?? this.androidLarge119ModelObj,
    );
  }
}
