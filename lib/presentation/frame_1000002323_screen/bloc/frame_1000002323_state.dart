// ignore_for_file: must_be_immutable

part of 'frame_1000002323_bloc.dart';

/// Represents the state of Frame1000002323 in the application.
class Frame1000002323State extends Equatable {
  Frame1000002323State({
    this.selectedDatesFromCalendar1,
    this.frame1000002323ModelObj,
  });

  Frame1000002323Model? frame1000002323ModelObj;

  List<DateTime?>? selectedDatesFromCalendar1;

  @override
  List<Object?> get props => [
        selectedDatesFromCalendar1,
        frame1000002323ModelObj,
      ];
  Frame1000002323State copyWith({
    List<DateTime?>? selectedDatesFromCalendar1,
    Frame1000002323Model? frame1000002323ModelObj,
  }) {
    return Frame1000002323State(
      selectedDatesFromCalendar1:
          selectedDatesFromCalendar1 ?? this.selectedDatesFromCalendar1,
      frame1000002323ModelObj:
          frame1000002323ModelObj ?? this.frame1000002323ModelObj,
    );
  }
}
