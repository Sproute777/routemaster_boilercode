import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bonus/bonus_cubit.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appState = context.read<BonusCubit>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CupertinoSwitch(
                  value: appState.state.showBonusTab,
                  onChanged: (value) {
                    context.read<BonusCubit>().showBonusTab(value);
                  },
                ),
               const  SizedBox(width: 10),
               const  Text('Show bonus tab'),
              ],
            ),
           const  SizedBox(height: 50),
            ElevatedButton(
              onPressed: () => context.read<BonusCubit>().showBonusTab(false)
                 ,
              child: const Text('Log out'),
            ),
          ],
        ),
      ),
    );
  }
}
