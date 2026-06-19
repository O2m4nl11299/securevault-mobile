// SecureVault icin temel smoke test: uygulama hata vermeden acilip ilk
// frame'i cizebiliyor mu kontrol eder.
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:securevault_app/main.dart';

void main() {
  testWidgets('SecureVaultApp acilista cokmeden yukleniyor', (WidgetTester tester) async {
    await tester.pumpWidget(const SecureVaultApp());
    await tester.pump();
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
