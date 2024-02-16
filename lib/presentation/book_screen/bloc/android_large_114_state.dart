// ignore_for_file: must_be_immutable

part of 'android_large_114_bloc.dart';

/// Represents the state of AndroidLarge114 in the application.
class AndroidLarge114State extends Equatable {
  AndroidLarge114State({
    this.searchController,
    this.androidLarge114ModelObj,
  });

  TextEditingController? searchController;

  AndroidLarge114Model? androidLarge114ModelObj;

  @override
  List<Object?> get props => [
        searchController,
        androidLarge114ModelObj,
      ];
  AndroidLarge114State copyWith({
    TextEditingController? searchController,
    AndroidLarge114Model? androidLarge114ModelObj,
  }) {
    return AndroidLarge114State(
      searchController: searchController ?? this.searchController,
      androidLarge114ModelObj:
          androidLarge114ModelObj ?? this.androidLarge114ModelObj,
    );
  }
}
