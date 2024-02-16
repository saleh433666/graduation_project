// ignore_for_file: must_be_immutable

part of 'android_large_120_bloc.dart';

/// Represents the state of AndroidLarge120 in the application.
class AndroidLarge120State extends Equatable {
  AndroidLarge120State({
    this.floatingTextFieldController,
    this.floatingTextFieldController1,
    this.floatingTextFieldController2,
    this.floatingTextFieldController3,
    this.floatingTextFieldController4,
    this.floatingTextFieldController5,
    this.floatingTextFieldController6,
    this.floatingTextFieldController7,
    this.floatingTextFieldController8,
    this.floatingTextFieldController9,
    this.androidLarge120ModelObj,
  });

  TextEditingController? floatingTextFieldController;

  TextEditingController? floatingTextFieldController1;

  TextEditingController? floatingTextFieldController2;

  TextEditingController? floatingTextFieldController3;

  TextEditingController? floatingTextFieldController4;

  TextEditingController? floatingTextFieldController5;

  TextEditingController? floatingTextFieldController6;

  TextEditingController? floatingTextFieldController7;

  TextEditingController? floatingTextFieldController8;

  TextEditingController? floatingTextFieldController9;

  AndroidLarge120Model? androidLarge120ModelObj;

  @override
  List<Object?> get props => [
        floatingTextFieldController,
        floatingTextFieldController1,
        floatingTextFieldController2,
        floatingTextFieldController3,
        floatingTextFieldController4,
        floatingTextFieldController5,
        floatingTextFieldController6,
        floatingTextFieldController7,
        floatingTextFieldController8,
        floatingTextFieldController9,
        androidLarge120ModelObj,
      ];
  AndroidLarge120State copyWith({
    TextEditingController? floatingTextFieldController,
    TextEditingController? floatingTextFieldController1,
    TextEditingController? floatingTextFieldController2,
    TextEditingController? floatingTextFieldController3,
    TextEditingController? floatingTextFieldController4,
    TextEditingController? floatingTextFieldController5,
    TextEditingController? floatingTextFieldController6,
    TextEditingController? floatingTextFieldController7,
    TextEditingController? floatingTextFieldController8,
    TextEditingController? floatingTextFieldController9,
    AndroidLarge120Model? androidLarge120ModelObj,
  }) {
    return AndroidLarge120State(
      floatingTextFieldController:
          floatingTextFieldController ?? this.floatingTextFieldController,
      floatingTextFieldController1:
          floatingTextFieldController1 ?? this.floatingTextFieldController1,
      floatingTextFieldController2:
          floatingTextFieldController2 ?? this.floatingTextFieldController2,
      floatingTextFieldController3:
          floatingTextFieldController3 ?? this.floatingTextFieldController3,
      floatingTextFieldController4:
          floatingTextFieldController4 ?? this.floatingTextFieldController4,
      floatingTextFieldController5:
          floatingTextFieldController5 ?? this.floatingTextFieldController5,
      floatingTextFieldController6:
          floatingTextFieldController6 ?? this.floatingTextFieldController6,
      floatingTextFieldController7:
          floatingTextFieldController7 ?? this.floatingTextFieldController7,
      floatingTextFieldController8:
          floatingTextFieldController8 ?? this.floatingTextFieldController8,
      floatingTextFieldController9:
          floatingTextFieldController9 ?? this.floatingTextFieldController9,
      androidLarge120ModelObj:
          androidLarge120ModelObj ?? this.androidLarge120ModelObj,
    );
  }
}
