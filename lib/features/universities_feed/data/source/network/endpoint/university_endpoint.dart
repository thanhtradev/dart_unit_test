import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dart_unit_test/features/universities_feed/data/source/network/model/api_university_model.dart';

part 'university_endpoint.g.dart';

@RestApi()
abstract class UniversityEndpoint {
  factory UniversityEndpoint(Dio dio, {String baseUrl}) = _UniversityEndpoint;

  @GET("/search")
  Future<List<ApiUniversityModel>> getUniversitiesByCountry(
      @Query("country") String country);
}
