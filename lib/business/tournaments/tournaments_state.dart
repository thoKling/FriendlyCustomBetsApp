part of 'tournaments_cubit.dart';

enum TournamentsLoadingState {
  notLoaded,
  loading,
  loaded,
}

class TournamentsState extends Equatable {
  final TournamentsLoadingState tournamentsLoadingState;

  final List<MyTournament> myTournaments;
  final MyTournament? currentTournament;

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
    List<MyTournament>? myTournaments,
    MyTournament? currentTournament,
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
