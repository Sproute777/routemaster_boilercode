import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../app_theme.dart';


part 'theme_state.dart';

class ThemeCubit extends HydratedCubit<ThemeState> {
  ThemeCubit() : super(ThemeState(themeData: appThemeData[AppTheme.yellowLight]!, index: 0));

void getTheme(int index) {
  switch(index){
    case 0:
    emit(ThemeState (themeData: appThemeData[AppTheme.yellowLight]!, index: 0 ));
          break;
    case 1:
    emit(ThemeState (themeData: appThemeData[AppTheme.yellowDark]!, index: 1 ));
          break;
    case 2:
    emit(ThemeState (themeData: appThemeData[AppTheme.redLight]!, index: 2 ));
          break;
    case 3:
    emit(ThemeState (themeData: appThemeData[AppTheme.redDark]!, index: 3 ));
          break;
    case 4:
    emit(ThemeState (themeData: appThemeData[AppTheme.tealLight]!, index: 4 ));
          break;
    case 5:
    emit(ThemeState (themeData: appThemeData[AppTheme.tealDark]!, index: 5 ));
          break;
    case 6:
    emit(ThemeState (themeData: appThemeData[AppTheme.greenLight]!, index: 6 ));
          break;
    case 7:
    emit(ThemeState (themeData: appThemeData[AppTheme.greenDark]!, index: 7 ));
    break;
    default:
    emit(ThemeState (themeData: appThemeData[AppTheme.yellowLight]!, index: 0 ));
  }
}

  @override
  ThemeState? fromJson(Map<String, dynamic> json) {
     switch(json['index']  as int){
    //  json[] as int
    case(0):
         return ThemeState(themeData: appThemeData[AppTheme.yellowLight]!, index: 0 );
    case(1):
        return ThemeState (themeData: appThemeData[AppTheme.yellowDark]!, index: 1 );
    case(2):
        return ThemeState (themeData: appThemeData[AppTheme.redLight]!, index: 2 );
    case(3):
        return ThemeState (themeData: appThemeData[AppTheme.redDark]!, index: 3 );
    case(4):
        return ThemeState (themeData: appThemeData[AppTheme.tealLight]!, index: 4 );
    case(5):
        return ThemeState (themeData: appThemeData[AppTheme.tealDark]!, index: 5 );
    case(6):
        return ThemeState (themeData: appThemeData[AppTheme.greenLight]!, index: 6 );
    case(7):
        return ThemeState (themeData: appThemeData[AppTheme.greenDark]!, index: 7 );
    default: 
        return ThemeState(themeData: appThemeData[AppTheme.tealLight]!, index: 0 );
  }}

  @override
  Map<String, dynamic>? toJson(ThemeState state) {
    switch(state.index){
      case(0):
      return {'index': 0};
      case(1):
      return {'index': 1};
      case(2):
      return {'index': 2};
      case(3):
      return {'index': 3};
      case(4):
      return {'index': 4};
      case(5):
      return {'index': 5};
      case(6):
      return {'index': 6};
      case(7):
      return {'index': 7};
      default: 
      return {'index': 0};
    }
  }
    
  }
 




