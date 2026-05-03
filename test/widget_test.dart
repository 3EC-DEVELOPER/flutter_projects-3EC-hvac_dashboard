import 'package:flutter_test/flutter_test.dart';

import 'package:hvac_dashboard/main.dart';
import 'package:hvac_dashboard/screens/main_screen.dart';

void main() {
  testWidgets('renders the HVAC dashboard shell', (WidgetTester tester) async {
    await tester.pumpWidget(const HvacDashboardApp());

    expect(find.byType(MainScreen), findsOneWidget);
  });
}
