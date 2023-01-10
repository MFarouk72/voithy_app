import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:voithy_app/commons/common_blocs/locale_cubit.dart';
import 'package:voithy_app/splash/view/splash_screen.dart';
import 'package:voithy_app/utilites/localization/app_localizations_setup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LocaleCubit(),),
      ],
      child: BlocBuilder<LocaleCubit, LocaleState>(
        buildWhen: (previousState, currentState) =>
            previousState != currentState,
        builder: (context, localeState) {
          return MaterialApp(
            title: 'Voithy_app',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            supportedLocales: AppLocalizationsSetup.supportedLocales,
            localizationsDelegates: AppLocalizationsSetup.localizationsDelegates,
           // localeResolutionCallback: AppLocalizationsSetup.localeResolutionCallback,
            locale: localeState.locale,
            home: const SplashScreen(),
          );
        },
      ),
    );
  }
}
