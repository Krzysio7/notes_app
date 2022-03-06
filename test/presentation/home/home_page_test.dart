import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:notes_app/presentation/home/home_page.dart';

import '../../test_helper.dart';
import '../app_inj.dart';


//TODO
void main() {
  group('Home', () {
    late MockHomeCubit mockCubit;

    setUp(() {
      mockCubit = MockHomeCubit();
    });
    testWidgets('should HomePage has FloatingActionButton', (tester) async {
      await tester.pumpAndSettleWidget(const AppInj(
        child: HomePage(),
      ));
      expect(find.byType(FloatingActionButton), findsOneWidget);
    });
  });
}
