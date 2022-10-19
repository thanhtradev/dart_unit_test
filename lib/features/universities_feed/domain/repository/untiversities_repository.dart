import 'package:dart_unit_test/features/universities_feed/domain/entity/university.dart';
import 'package:dart_unit_test/network_config/app_result.dart';

abstract class UniversitiesRepository {
  Stream<AppResult<List<University>>> getUniversities(String? country);
}
