import 'package:dart_unit_test/features/universities_feed/data/repository/university_repository_impl.dart';
import 'package:dart_unit_test/features/universities_feed/domain/repository/untiversities_repository.dart';
import 'package:dart_unit_test/features/universities_feed/presentation/models/university_screen_model.dart';
import 'package:dart_unit_test/features/universities_feed/presentation/models/university_screen_state.dart';
import 'package:dart_unit_test/network_config/app_result.dart';

class GetUniversitiesByCountryUseCase {
  final UniversitiesRepository _universitiesRepository;

  GetUniversitiesByCountryUseCase(
      {UniversitiesRepository? universitiesRepository})
      : _universitiesRepository =
            universitiesRepository ?? UniversityRepositoryImpl();

  Stream<AppResult<UniversityScreenState>> invoke(String? country) {
    return _universitiesRepository.getUniversities(country).map((event) {
      return event.safeMap((p0) => UniversityScreenState(
            universities:
                p0.map((e) => UniversityScreenModel.fromDomain(e)).toList(),
          ));
    });
  }
}
