// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `skip`
  String get skip {
    return Intl.message(
      'skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Air conditioning Maintenance`
  String get Air_conditioning_Maintenance {
    return Intl.message(
      'Air conditioning Maintenance',
      name: 'Air_conditioning_Maintenance',
      desc: '',
      args: [],
    );
  }

  /// `Electrical works`
  String get Electrical_works {
    return Intl.message(
      'Electrical works',
      name: 'Electrical_works',
      desc: '',
      args: [],
    );
  }

  /// `painting and Decoration`
  String get painting_and_Decoration {
    return Intl.message(
      'painting and Decoration',
      name: 'painting_and_Decoration',
      desc: '',
      args: [],
    );
  }

  /// `Household Appliance`
  String get Household_Appliance {
    return Intl.message(
      'Household Appliance',
      name: 'Household_Appliance',
      desc: '',
      args: [],
    );
  }

  /// `Carpentry works`
  String get Carpentry_works {
    return Intl.message(
      'Carpentry works',
      name: 'Carpentry_works',
      desc: '',
      args: [],
    );
  }

  /// `choose  maintenance service`
  String get choose_maintenance_service {
    return Intl.message(
      'choose  maintenance service',
      name: 'choose_maintenance_service',
      desc: '',
      args: [],
    );
  }

  /// `then get best prices from our suppliers`
  String get then_get_best_prices_from_our_suppliers {
    return Intl.message(
      'then get best prices from our suppliers',
      name: 'then_get_best_prices_from_our_suppliers',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
