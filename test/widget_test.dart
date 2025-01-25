import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/main.dart';

void main() {
  testWidgets('Testa se o título aparece na tela', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Flutter Responsive App'), findsOneWidget);
  });
}
