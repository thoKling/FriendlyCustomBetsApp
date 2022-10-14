import 'package:dio/dio.dart';
import 'package:friendly_custom_bets_app/rest/dto/game_creation_dto.dart';
import 'package:retrofit/retrofit.dart';

import '../dto/game.dart';
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

  @GET("tournament/{id}")
  Future<Tournament> getTournament(@Path("id") int tournamentId);

  @POST("create")
  Future<Tournament> createTournament(@Body() String tournamentName);

  @POST("join")
  Future<Tournament> joinTournament(@Body() int tournamentId);

  @POST("addGame")
  Future<Game> addGame(
    @Body() GameCreationDto gameCreationDto,
  );
}
