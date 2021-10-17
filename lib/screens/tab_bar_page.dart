import 'package:flutter/material.dart';
import '../bonus/bonus_cubit.dart';
import 'package:routemaster/routemaster.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class TabBarPage extends StatelessWidget {
  const TabBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appState =context.read<BonusCubit>();
    final tabPage = TabPage.of(context);

    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: tabPage.controller,
          tabs: [
              const Tab(
              icon: Icon(Icons.directions_car),
              text: 'Home',
            ),
            if (appState.state.showBonusTab)
              const Tab(
                icon: Icon(Icons.directions_transit),
                text: 'Bonus',
              ),
              const Tab(
              icon: Icon(Icons.directions_car),
              text: 'Settings',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabPage.controller,
        children: [
          for (final stack in tabPage.stacks) PageStackNavigator(stack: stack),
        ],
      ),
    );
  }
}
