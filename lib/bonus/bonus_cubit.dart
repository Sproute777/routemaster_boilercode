import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'bonus_state.dart';

class BonusCubit extends Cubit<BonusState> {
  BonusCubit() : super(const BonusState());

  void showBonusTab(bool value)=> emit(BonusState(showBonusTab: value));
}
