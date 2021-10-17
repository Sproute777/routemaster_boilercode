
import 'package:routemaster/routemaster.dart';
import 'package:flutter/material.dart';
import 'package:routemaster_boilercode/screens/barrel.dart';


import 'db/data_base.dart';
import 'bonus/bonus_cubit.dart';

RouteMap buildRouteMap(BonusState stateBonus) {
  return RouteMap(
  routes: {


   '/': (_) => MaterialPage(
          child: HomePage(families: Families.data),
          ),
    '/family/:fid': (info)  {
          final id = info.pathParameters['fid']!;
          final family = Families.family(id);
          return  MaterialPage(
                      child:  FamilyPage(family: family),
          );
          },
   '/family/:fid/person/:pid': (info)  {
          final family = Families.family(info.pathParameters['fid']!);
          final person = family.person(info.pathParameters['pid']!);
          return  MaterialPage(
                        child: ContentPage(family: family, content: person,),
          );
          },
// --------------------------------------------------------------------------
   '/preffence' : (_) => const MaterialPage(
          child: PreferenceScreen(),
          ),
// --------------------------------------------------------------------------
  '/bottom-navigation-bar': (_) => const IndexedPage(
            child: BottomNavigationBarPage(),
            paths: ['one', 'two', 'three'],
          ),
  '/bottom-navigation-bar/one': (_) => const MaterialPage(
            child: BottomContentPage(),
          ),
  '/bottom-navigation-bar/two': (_) => const MaterialPage(
            child: BottomContentPage2(),
          ),
  '/bottom-navigation-bar/three': (_) => const MaterialPage(
            child: MessagePage(message: 'Page three'),
          ),
  '/bottom-navigation-bar/threepage': (_) => const MaterialPage(
            child: DoubleBackPage(),
          ),
  '/bottom-navigation-bar/replaced': (_) => const MaterialPage(
            child: MessagePage(message: 'Replaced'),
          ),
// --------------------------------------------------------------------------
  '/tab-bar': (_) => TabPage(
            child: const TabBarPage(),
            paths: [
                  'one',
                   if (stateBonus.showBonusTab) 'bonus',
                  'settings',
                   ],
                 ),
  '/tab-bar/one': (_) => const MaterialPage(child: MessagePage(message: 'One')),
  '/tab-bar/bonus': (_) => const MaterialPage(
                                      child: MessagePage(message: 'BONUS!!'),
                 ),
  '/tab-bar/settings': (_) => const MaterialPage(child: SettingsPage()),
// --------------------------------------------------------------------------
  '/stack': (_) => StackPage(
            pageBuilder: (child) => BottomSheetPage(child: child),
                          child: const StackBottomSheetContents(),
            defaultPath: 'one',
            ),

  '/stack/one': (_) => const MaterialPage(child: StackPageOne()),
  '/stack/one/two': (_) => const MaterialPage(child: StackPageTwo()),
// --------------------------------------------------------------------------
  '/custom-transitions': (_) => const CustomPage(
          child:  MessagePage(message: 'Custom transitions'),),
// --------------------------------------------------------------------------
  '/notifications': (_) => const IndexedPage(
            child: NotificationsPage(),
            paths: ['one', 'two'],
          ),
  '/notifications/one': (_) => const MaterialPage(
            name: 'Notifications - One',
            child: NotificationsContentPage(
              message: 'Page one',
            ),
          ),
  '/notifications/two': (_) => const MaterialPage(
            name: 'Notifications - Two',
            child: NotificationsContentPage(message: 'Page two'),
          ),
  '/notifications/pushed': (_) => const MaterialPage(
            child: MessagePage(message: 'Pushed notifications'),
          ),
                },
);}
   
 final loggedOutRouteMap = RouteMap(
  onUnknownRoute: (route) => const Redirect('/'),
  routes: {
    '/': (_) => const MaterialPage(child: LoginPage()),
  },
);


