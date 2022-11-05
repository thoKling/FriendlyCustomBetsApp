part of 'selected_tournament_cubit.dart';

class SelectedTournamentsState extends Equatable {
  final MyTournament selectedTournament;
  final List<BetTaken> betsTaken;

  const SelectedTournamentsState(
    this.selectedTournament,
    this.betsTaken,
  );

  factory SelectedTournamentsState.initial(MyTournament selectedTournament) =>
      SelectedTournamentsState(
        selectedTournament,
        [],
      );

  copyWith({
    MyTournament? selectedTournament,
    List<BetTaken>? betsTaken,
  }) {
    return SelectedTournamentsState(
      selectedTournament ?? this.selectedTournament,
      betsTaken ?? this.betsTaken,
    );
  }

  @override
  List<Object> get props => [
        selectedTournament,
        betsTaken,
      ];
}
