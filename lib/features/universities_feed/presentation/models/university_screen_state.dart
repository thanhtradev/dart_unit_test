import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dart_unit_test/features/universities_feed/presentation/models/university_screen_model.dart';

part 'university_screen_state.freezed.dart';

@freezed
class UniversityScreenState with _$UniversityScreenState {
  const UniversityScreenState._();

  factory UniversityScreenState({
    required List<UniversityScreenModel> universities,
  }) = _UniversityScreenState;
}
