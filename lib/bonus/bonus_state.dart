part of 'bonus_cubit.dart';

 class BonusState extends Equatable {
  const BonusState({this.showBonusTab = false});
final bool showBonusTab;

BonusState copyWith({required bool newValue}){
  return BonusState(
    showBonusTab: newValue); 
}
  @override
  List<Object> get props => [showBonusTab];
}


