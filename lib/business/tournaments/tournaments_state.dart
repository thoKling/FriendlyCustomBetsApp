part of 'tournaments_cubit.dart';

enum TournamentsLoadingState {
  notLoaded,
  loading,
  loaded,
}

class TournamentsState extends Equatable {
  final TournamentsLoadingState tournamentsLoadingState;

  final List<MyTournament> myTournaments;

  const TournamentsState(
    this.tournamentsLoadingState,
    this.myTournaments,
  );

  factory TournamentsState.initial() => TournamentsState(
        TournamentsLoadingState.notLoaded,
        List.unmodifiable([]),
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
    );
  }

  @override
  List<Object> get props => [
        tournamentsLoadingState,
        myTournaments,
      ];
}
