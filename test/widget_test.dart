import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:laba15_last_flutter_app/main.dart';

void main() {
  testWidgets('FloatingActionButton with correct icon and counter increments', (WidgetTester tester) async {
    // Рендеримо додаток
    await tester.pumpWidget(const MyApp());

    // Перевіряємо наявність тексту в AppBar
    expect(find.text("KN-32: Dima's last Flutter App"), findsOneWidget);

    // Перевіряємо наявність FloatingActionButton з іконкою Icons.mouse
    expect(find.byType(FloatingActionButton), findsOneWidget);
    expect(find.byIcon(Icons.mouse), findsOneWidget);

    // Перевіряємо значення лічильника за замовчуванням
    expect(find.text('0'), findsOneWidget);

    // Натискаємо на кнопку
    await tester.tap(find.byIcon(Icons.mouse));
    await tester.pump();

    // Перевіряємо, чи значення лічильника збільшилось на 3
    expect(find.text('3'), findsOneWidget);
  });

  test('FunctionCalculator returns correct value', () {
    // Створюємо екземпляр FunctionCalculator
    final calculator = FunctionCalculator();

    // Перевіряємо, чи функція правильно обчислює значення
    expect(calculator.calculate(2), 2); // 2^2 - 4 + 2 = 2
    expect(calculator.calculate(-1), -4); // (-1)^2 - 4 + (-1) = -4
    expect(calculator.calculate(0), -4); // 0^2 - 4 + 0 = -4
  });
}
