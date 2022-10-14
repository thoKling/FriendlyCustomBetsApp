import 'package:json_annotation/json_annotation.dart';

part 'game_creation_dto.g.dart';

@JsonSerializable()
class GameCreationDto {
  final String name;
  final int tournamentId;

  factory GameCreationDto.fromJson(Map<String, dynamic> json) =>
      _$GameCreationDtoFromJson(json);

  GameCreationDto(this.name, this.tournamentId);

  Map<String, dynamic> toJson() => _$GameCreationDtoToJson(this);
}
