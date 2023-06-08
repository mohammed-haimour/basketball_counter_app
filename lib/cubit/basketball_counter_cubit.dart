// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';

part 'basketball_counter_state.dart';

class BasketballCounterCubit extends Cubit<BasketballCounterState> {
  BasketballCounterCubit() : super(BasketballCounterIncreaseA());

  int teamAPoints = 0;

  int teamBPoints = 0;

  // ignore: non_constant_identifier_names
  void TeamIncreament({required String teamName, required int increaseValue}) {
    if (teamName == "A") {
      teamAPoints += increaseValue;
      emit(BasketballCounterIncreaseA());
    } else if (teamName == "B") {
      teamBPoints += increaseValue;
      emit(BasketballCounterIncreaseB());
    } else {
      teamAPoints = 0;
      teamBPoints = 0;
      emit(BasketballResetCounter());
    }
  }
}
