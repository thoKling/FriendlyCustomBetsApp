import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../dto/tournament.dart';
import '../interceptors/authentication_interceptor.dart';

part 'tournaments_client.g.dart';

@RestApi(baseUrl: "http://192.168.1.94:7000/tournament/")
abstract class TournamentsClient {
  static TournamentsClient? _singleton;
  static final Dio _dio = Dio();

  factory TournamentsClient() {
    _dio.interceptors.add(AuthenticationInterceptor());

    _singleton ??= _TournamentsClient(_dio);

    return _singleton!;
  }

  @GET("myTournaments")
  Future<List<Tournament>> getMyTournaments();

  @POST("create")
  Future<Tournament> createTournament(@Body() String tournamentName);
}
