import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_i18n/flutter_i18n_delegate.dart';
import 'package:flutter_i18n/loaders/file_translation_loader.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:friendly_custom_bets_app/business/authentication/authentication_cubit.dart';
import 'package:friendly_custom_bets_app/ui/theme/theme.dart';

import 'business/navigation/my_router.dart';
import 'business/navigation/routes.dart';

class FriendlyCustomBetsApp extends StatefulWidget {
  const FriendlyCustomBetsApp({Key? key}) : super(key: key);

  @override
  State<FriendlyCustomBetsApp> createState() => _FriendlyCustomBetsAppState();
}

class _FriendlyCustomBetsAppState extends State<FriendlyCustomBetsApp> {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthenticationCubit>(
          create: (BuildContext context) => AuthenticationCubit(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: appTheme,

        /// Translations
        supportedLocales: const [
          Locale('en', ''),
          Locale('fr', 'FR'),
        ],
        localizationsDelegates: [
          FlutterI18nDelegate(
            translationLoader: FileTranslationLoader(
              fallbackFile: "en",
              basePath: "assets/i18n",
            ),
            missingTranslationHandler: (key, locale) {
              debugPrint(
                "--- Missing Key: $key, languageCode: ${locale!.languageCode}",
              );
            },
          ),
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],

        /// Routes
        initialRoute: Routes.login,
        navigatorKey: _navigatorKey,
        onGenerateRoute: (RouteSettings settings) => MyRouter.route(settings),
      ),
    );
  }
}
