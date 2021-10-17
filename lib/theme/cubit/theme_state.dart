part of 'theme_cubit.dart';

 class ThemeState extends Equatable {
   const ThemeState( { required this.index, required this.themeData,
    } );
   final int index;
   final ThemeData themeData;
  

  
  @override
  List<Object> get props => [index,themeData];
}


