import 'package:dart_unit_test/features/universities_feed/data/source/network/model/api_university_model.dart';
import 'package:hive/hive.dart';
import 'package:dart_unit_test/features/universities_feed/domain/entity/university.dart';

part 'hive_university_model.g.dart';

@HiveType(typeId: 0)
class HiveUniversityModel {
  @HiveField(0)
  final String? alphaCode;
  @HiveField(1)
  final String? country;
  @HiveField(2)
  final String? state;
  @HiveField(3)
  final String? name;
  @HiveField(4)
  final List<String?>? websites;
  @HiveField(5)
  final List<String?>? domains;

  HiveUniversityModel({
    this.alphaCode,
    this.country,
    this.state,
    this.name,
    this.websites,
    this.domains,
  });

  factory HiveUniversityModel.fromApiUniversityModel(
      ApiUniversityModel apiUniversityModel) {
    return HiveUniversityModel(
      alphaCode: apiUniversityModel.alphaCode,
      country: apiUniversityModel.country,
      state: apiUniversityModel.state,
      name: apiUniversityModel.name,
      websites: apiUniversityModel.websites,
      domains: apiUniversityModel.domains,
    );
  }

  University toDomain() {
    return University(
      alphaCode: alphaCode ?? "",
      country: country ?? "",
      state: state ?? "",
      name: name ?? "",
      websites: websites?.map((e) => e ?? "").toList() ?? [],
      domains: domains?.map((e) => e ?? "").toList() ?? [],
    );
  }
}
