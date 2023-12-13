import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:supervisor/app/router.dart';
import 'package:supervisor/app/themes/themes.dart';
import 'package:supervisor/features/features.dart';
import 'package:supervisor/generated/l10n.dart';
import 'package:supervisor/locator/locator.dart';

class SupervisorApp extends StatefulWidget {
  const SupervisorApp({super.key});

  @override
  State<SupervisorApp> createState() => _SupervisorAppState();
}

class _SupervisorAppState extends State<SupervisorApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => locator.get<LoginCubit>(),
        ),
      ],
      child: MaterialApp.router(
        theme: lightTheme,
        themeMode: ThemeMode.light,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        routerDelegate: router.routerDelegate,
        routeInformationParser: router.routeInformationParser,
        routeInformationProvider: router.routeInformationProvider,
      ),
    );
  }
}
