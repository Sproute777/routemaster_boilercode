import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../theme/cubit/theme_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:routemaster/routemaster.dart';


class PreferenceScreen extends StatelessWidget {
  const PreferenceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: true,
      child: Scaffold(
        appBar: AppBar(title: const Text('Choose app theme'),
        actions: [
          IconButton(onPressed: (){
            Routemaster.of(context).push('/');
          }, icon: const Icon(Icons.arrow_back)),
          Expanded(child: ColoredBox(color: Theme.of(context).primaryColor),),
          Expanded(child: ColoredBox(color: Theme.of(context).scaffoldBackgroundColor),),
          Expanded(child: ColoredBox(color: Theme.of(context).primaryColorDark),),
          
          ],
        ),
        body: ListView.builder(
          padding: const EdgeInsets.all(8.0),
          itemCount: AppTheme.values.length,
          itemBuilder: (context, index){
            final themeId =  (AppTheme.values[index]).toString();
            final themeStr = themeId.split(".");
            return Card(
            child:  ListTile(
              title:   Text(
               " ${themeStr[1]}" ),
    
              
              onTap: (){
      context.read<ThemeCubit>().getTheme(index);
              },),   
            );
          })
      ),
    );
  }

  }
