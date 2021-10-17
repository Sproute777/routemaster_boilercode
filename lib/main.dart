import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:routemaster/routemaster.dart';

import 'bonus/bonus_cubit.dart';
import 'routes.dart';
import 'theme/cubit/theme_cubit.dart';
import 'auth/auth_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final tmpDir = await getTemporaryDirectory();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: tmpDir,
  );

  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: [

          BlocProvider(
            create: (context) => ThemeCubit(), ),

          BlocProvider(
            create: (context) => AuthBloc(),),

          BlocProvider(
            create: (context) => BonusCubit(), ),

          ],
           child: BlocBuilder<ThemeCubit, ThemeState>(
                           builder: (context, theme) {
           return BlocBuilder<AuthBloc, AuthStatus>(
                          builder: (context, status) {
           return BlocBuilder<BonusCubit, BonusState>(
                           builder: (context, state) {

                             
                      return MaterialApp.router(
                      title: 'application ',
                      theme: theme.themeData,
                      routeInformationParser: const RoutemasterParser(),
                      routerDelegate:
                           RoutemasterDelegate(
                               observers: [TitleObserver()],
                               routesBuilder: (_) =>
                                        (status.isAuth)  ? buildRouteMap(state)
                                                         :   loggedOutRouteMap),
                );
              },
            );
          },
        );
      },
    ),
  );
}

class TitleObserver extends RoutemasterObserver {
  @override
  void didChangeRoute(RouteData routeData, Page page) {
    if (page.name != null) {
      SystemChrome.setApplicationSwitcherDescription(
        ApplicationSwitcherDescription(
          label: page.name,
          primaryColor: 0xFF00FF00,
        ),
      );
    }
  }
}
