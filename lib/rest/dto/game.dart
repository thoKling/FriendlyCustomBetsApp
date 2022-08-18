import 'package:json_annotation/json_annotation.dart';

import 'bet.dart';

part 'game.g.dart';

@JsonSerializable()
class Game {
  final int? id;
  final List<Bet> bets;
  final String name;

  Game(this.id, this.bets, this.name);

  factory Game.fromJson(Map<String, dynamic> json) => _$GameFromJson(json);

  Map<String, dynamic> toJson() => _$GameToJson(this);
}
