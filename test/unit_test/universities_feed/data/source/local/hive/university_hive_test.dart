import 'dart:io';

import 'package:dart_unit_test/features/universities_feed/data/source/local/hive/university_hive.dart';
import 'package:dart_unit_test/features/universities_feed/data/source/local/model/hive_university_model.dart';
import 'package:dart_unit_test/features/universities_feed/data/source/network/model/api_university_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';

void main() {
  late UniversityHive universityHive;
  late Box<HiveUniversityModel> box;

  List<ApiUniversityModel> apiUniversityModels = [
    ApiUniversityModel(
      alphaCode: 'US',
      country: 'United States',
      state: null,
      name: 'Marywood University',
      websites: ['http://www.marywood.edu'],
      domains: ['marywood.edu'],
    ),
    ApiUniversityModel(
      alphaCode: 'US',
      country: 'United States',
      state: 'MJ',
      name: 'Lindenwood University',
      websites: null,
      domains: ['lindenwood.edu'],
    ),
  ];

  var path = Directory.current.path;
  Hive
    ..init(path)
    ..registerAdapter(HiveUniversityModelAdapter());

  setUp(() async {
    box = await Hive.openBox('universities');
    box.deleteAll(box.keys);
    universityHive = UniversityHive(box);
  });

  group('Test University Hive', () {
    test('Test cache ApiUniversityModel', () async {
      await universityHive.saveApiUniversity(apiUniversityModels);
      expect(box.length, 2);
      // expect(
      //     box.getAt(0)?.toDomain(),
      //     HiveUniversityModel.fromApiUniversityModel(apiUniversityModels[0])
      //         .toDomain());
      // expect(
      //     box.getAt(1)?.toDomain(),
      //     HiveUniversityModel.fromApiUniversityModel(apiUniversityModels[1])
      //         .toDomain());
    });

    test('Test get University from cache', () async {
      await universityHive.saveApiUniversity(apiUniversityModels);
      expect(
          universityHive.getUniversities(),
          apiUniversityModels
              .map((e) =>
                  HiveUniversityModel.fromApiUniversityModel(e).toDomain())
              .toList());
    });
  });
}
