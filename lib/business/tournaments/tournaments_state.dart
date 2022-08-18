part of 'tournaments_cubit.dart';

enum TournamentsLoadingState {
  notLoaded,
  loading,
  loaded,
}

class TournamentsState extends Equatable {
  final TournamentsLoadingState tournamentsLoadingState;

  final List<Tournament> myTournaments;
  final Tournament? currentTournament;

  const TournamentsState(
    this.tournamentsLoadingState,
    this.myTournaments,
    this.currentTournament,
  );

  factory TournamentsState.initial() => TournamentsState(
        TournamentsLoadingState.notLoaded,
        List.unmodifiable([]),
        null,
      );

  copyWith({
    TournamentsLoadingState? tournamentsLoadingState,
    List<Tournament>? myTournaments,
    Tournament? currentTournament,
  }) {
    return TournamentsState(
      tournamentsLoadingState ?? this.tournamentsLoadingState,
      myTournaments == null
          ? this.myTournaments
          : List.unmodifiable(myTournaments),
      currentTournament ?? this.currentTournament,
    );
  }

  @override
  List<Object> get props => [
        tournamentsLoadingState,
        myTournaments,
        currentTournament ?? "",
      ];
}
