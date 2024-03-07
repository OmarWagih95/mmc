import 'package:androidstudiommc/cubits/cupit_states.dart';
import 'package:androidstudiommc/generated/l10n.dart';
import 'package:androidstudiommc/views/selectLanguage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import '/cubits/app_cupit.dart';
import '/views/cubitRouting.dart';
import 'package:intl/intl.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:androidstudiommc/firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<app_cupit>(
      create: (context) {
        return app_cupit();
      },
      child: MaterialApp(
          locale: Locale(app_cupit.lan),
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              appBarTheme: const AppBarTheme(
                  iconTheme: IconThemeData(color: Colors.black),
                  elevation: 0,
                  backgroundColor: Colors.white)),
          home: chooseLanguages()),
    );
  }
}

