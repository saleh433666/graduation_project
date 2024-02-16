// ignore_for_file: must_be_immutable

part of 'frame_9701_bloc.dart';

/// Represents the state of Frame9701 in the application.
class Frame9701State extends Equatable {
  Frame9701State({this.frame9701ModelObj});

  Frame9701Model? frame9701ModelObj;

  @override
  List<Object?> get props => [
        frame9701ModelObj,
      ];
  Frame9701State copyWith({Frame9701Model? frame9701ModelObj}) {
    return Frame9701State(
      frame9701ModelObj: frame9701ModelObj ?? this.frame9701ModelObj,
    );
  }
}
