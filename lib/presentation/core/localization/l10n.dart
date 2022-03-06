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

class Localization {
  Localization();

  static Localization? _current;

  static Localization get current {
    assert(_current != null,
        'No instance of Localization was loaded. Try to initialize the Localization delegate before accessing Localization.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<Localization> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = Localization();
      Localization._current = instance;

      return instance;
    });
  }

  static Localization of(BuildContext context) {
    final instance = Localization.maybeOf(context);
    assert(instance != null,
        'No instance of Localization present in the widget tree. Did you add Localization.delegate in localizationsDelegates?');
    return instance!;
  }

  static Localization? maybeOf(BuildContext context) {
    return Localizations.of<Localization>(context, Localization);
  }

  /// `No items`
  String get emptyList {
    return Intl.message(
      'No items',
      name: 'emptyList',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong`
  String get unexpected {
    return Intl.message(
      'Something went wrong',
      name: 'unexpected',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get saveButton {
    return Intl.message(
      'Save',
      name: 'saveButton',
      desc: '',
      args: [],
    );
  }

  /// `Enter note`
  String get noteField {
    return Intl.message(
      'Enter note',
      name: 'noteField',
      desc: '',
      args: [],
    );
  }

  /// `Enter note`
  String get addNotePageTitle {
    return Intl.message(
      'Enter note',
      name: 'addNotePageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Add Note`
  String get addNoteFABTooltip {
    return Intl.message(
      'Add Note',
      name: 'addNoteFABTooltip',
      desc: '',
      args: [],
    );
  }

  /// `Notes`
  String get homePageTitle {
    return Intl.message(
      'Notes',
      name: 'homePageTitle',
      desc: '',
      args: [],
    );
  }

  /// `This field must be a valid email`
  String get validatorEmail {
    return Intl.message(
      'This field must be a valid email',
      name: 'validatorEmail',
      desc: '',
      args: [],
    );
  }

  /// `This field must be at least {value} digits long`
  String validatorMinLength(int value) {
    return Intl.message(
      'This field must be at least $value digits long',
      name: 'validatorMinLength',
      desc: '',
      args: [value],
    );
  }

  /// `This field is required`
  String get validatorRequired {
    return Intl.message(
      'This field is required',
      name: 'validatorRequired',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<Localization> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<Localization> load(Locale locale) => Localization.load(locale);
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
