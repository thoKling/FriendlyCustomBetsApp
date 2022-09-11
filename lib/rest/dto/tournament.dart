import 'package:json_annotation/json_annotation.dart';

import 'game.dart';
import 'user.dart';

part 'tournament.g.dart';

@JsonSerializable()
class Tournament {
  final int id;
  final String name;
  final List<Game> games;
  final User owner;
  final double startingTokens;
  final double myTokens;

  Tournament(
    this.id,
    this.name,
    this.games,
    this.owner,
    this.startingTokens,
    this.myTokens,
  );

  factory Tournament.fromJson(Map<String, dynamic> json) =>
      _$TournamentFromJson(json);

  Map<String, dynamic> toJson() => _$TournamentToJson(this);

  @override
  String toString() {
    return 'Tournament{id: $id, name: $name, games: $games, owner: $owner, startingTokens: $startingTokens, myTokens: $myTokens}';
  }
}
