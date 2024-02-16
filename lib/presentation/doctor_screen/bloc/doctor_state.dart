// ignore_for_file: must_be_immutable

part of 'doctor_bloc.dart';

/// Represents the state of Doctor in the application.
class DoctorState extends Equatable {
  DoctorState({this.doctorModelObj});

  DoctorModel? doctorModelObj;

  @override
  List<Object?> get props => [
        doctorModelObj,
      ];
  DoctorState copyWith({DoctorModel? doctorModelObj}) {
    return DoctorState(
      doctorModelObj: doctorModelObj ?? this.doctorModelObj,
    );
  }
}
