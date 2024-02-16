// ignore_for_file: must_be_immutable

part of 'android_large_115_bloc.dart';

/// Represents the state of AndroidLarge115 in the application.
class AndroidLarge115State extends Equatable {
  AndroidLarge115State({
    this.selectedDatesFromCalendar1,
    this.androidLarge115ModelObj,
  });

  AndroidLarge115Model? androidLarge115ModelObj;

  List<DateTime?>? selectedDatesFromCalendar1;

  @override
  List<Object?> get props => [
        selectedDatesFromCalendar1,
        androidLarge115ModelObj,
      ];
  AndroidLarge115State copyWith({
    List<DateTime?>? selectedDatesFromCalendar1,
    AndroidLarge115Model? androidLarge115ModelObj,
  }) {
    return AndroidLarge115State(
      selectedDatesFromCalendar1:
          selectedDatesFromCalendar1 ?? this.selectedDatesFromCalendar1,
      androidLarge115ModelObj:
          androidLarge115ModelObj ?? this.androidLarge115ModelObj,
    );
  }
}
