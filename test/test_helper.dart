import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:notes_app/presentation/core/localization/l10n.dart';

Localization get local => Localization.current;

extension WidgetTesterExtension on WidgetTester {
  Future<void> pumpAndSettleWidget(Widget child) async {
    await pumpWidget(child);
    await pumpAndSettle();
  }
}
