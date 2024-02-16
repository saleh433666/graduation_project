// ignore_for_file: must_be_immutable

part of 'android_large_118_bloc.dart';

/// Represents the state of AndroidLarge118 in the application.
class AndroidLarge118State extends Equatable {
  AndroidLarge118State({
    this.searchController,
    this.androidLarge118ModelObj,
  });

  TextEditingController? searchController;

  AndroidLarge118Model? androidLarge118ModelObj;

  @override
  List<Object?> get props => [
        searchController,
        androidLarge118ModelObj,
      ];
  AndroidLarge118State copyWith({
    TextEditingController? searchController,
    AndroidLarge118Model? androidLarge118ModelObj,
  }) {
    return AndroidLarge118State(
      searchController: searchController ?? this.searchController,
      androidLarge118ModelObj:
          androidLarge118ModelObj ?? this.androidLarge118ModelObj,
    );
  }
}
