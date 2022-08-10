import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'tournaments_client.g.dart';

@RestApi(baseUrl: "http://192.168.1.94:7000/tournament/")
abstract class TournamentsClient {
  static TournamentsClient? _singleton;
  static final Dio _dio = Dio();

  static setAuthorizationToken(String accessToken) {
    _dio.options.headers['Authorization'] = 'Bearer $accessToken';
  }

  factory TournamentsClient() {
    _singleton ??= _TournamentsClient(_dio);

    return _singleton!;
  }

  @GET("myTournaments", autoCastResponse: false)
  Future<String> myTournaments();
}
