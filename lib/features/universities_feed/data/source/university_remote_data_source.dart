import 'package:dart_unit_test/features/universities_feed/data/source/network/endpoint/university_endpoint.dart';
import 'package:dart_unit_test/features/universities_feed/domain/entity/university.dart';
import 'package:dart_unit_test/network_config/app_result.dart';
import 'package:dart_unit_test/network_config/retrofit_client.dart';
import 'package:dart_unit_test/utils/extensions/future_extensions.dart';

class UniversityRemoteDataSource {
  final UniversityEndpoint _universityEndpoint;

  UniversityRemoteDataSource({UniversityEndpoint? universityEndpoint})
      : _universityEndpoint = universityEndpoint ??
            UniversityEndpoint(
                DioClientExtension.createUniversitiesApiClient());

  Stream<AppResult<List<University>>> getUniversitiesByCountry(
    String? country,
  ) {
    return _universityEndpoint
        .getUniversitiesByCountry(country ?? "United states")
        .safeApiConvert((p0) => p0.map((e) => e.toDomain()).toList());
  }
}
