import 'package:json_annotation/json_annotation.dart';

part 'bet.g.dart';

@JsonSerializable()
class Bet {
  final int? id;

  final int odd;

  Bet(this.id, this.odd);

  factory Bet.fromJson(Map<String, dynamic> json) => _$BetFromJson(json);

  Map<String, dynamic> toJson() => _$BetToJson(this);
}
