import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami_app/core/share_preferance_handling/share_preferance_handling.dart';
import 'package:islami_app/cubit/most_recent_cubit/most_recent_state.dart';

class MostRecentCubit extends Cubit<MostRecentState>{
  MostRecentCubit():super(NotEmptyMostRecentState(mostRecntly: []));

  List<int> mostRecent = [];
  Future<void> addMostRecent(int index)async{
    await SharePreferencesHandling.addMostRecent(index.toString());
    mostRecent = await SharePreferencesHandling.getMostRecentAsListString();
    emit(NotEmptyMostRecentState(mostRecntly: mostRecent));
  }
  Future<void> getData()async{
    mostRecent = await SharePreferencesHandling.getMostRecentAsListString();
    emit(NotEmptyMostRecentState(mostRecntly: mostRecent));
  }
}