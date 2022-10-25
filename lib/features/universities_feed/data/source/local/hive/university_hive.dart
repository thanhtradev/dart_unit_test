import 'package:dart_unit_test/features/universities_feed/data/source/local/model/hive_university_model.dart';
import 'package:dart_unit_test/features/universities_feed/data/source/network/model/api_university_model.dart';
import 'package:dart_unit_test/features/universities_feed/domain/entity/university.dart';
import 'package:hive/hive.dart';

class UniversityHive {
  static const String boxName = 'universities';

  final Box box;

  UniversityHive(this.box);

  Future saveApiUniversity(List<ApiUniversityModel> apiUniversityModels) async {
    await box.clear();
    await box.addAll(apiUniversityModels
        .map((e) => HiveUniversityModel.fromApiUniversityModel(e))
        .toList());
  }

  List<University> getUniversities() {
    return box.values
        .map((e) => (e as HiveUniversityModel).toDomain())
        .toList();
  }
}
