class MostRecentState {}
class EmptyMostRecentState extends MostRecentState{}
class NotEmptyMostRecentState extends MostRecentState{
  List<int> mostRecntly;
  NotEmptyMostRecentState({required this.mostRecntly});
}