import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:primeiro_app_flutter/main.dart';  // Certifique-se de ajustar o caminho do seu arquivo main.dart

void main() {
  // Teste para garantir que o aplicativo esteja funcionando corretamente.
  testWidgets('Verificar o layout responsivo', (WidgetTester tester) async {
    // Construir o widget MyApp no ambiente de teste
    await tester.pumpWidget(MyApp());

    // Verificar se o app foi carregado corretamente
    expect(find.text('Layout Responsivo'), findsOneWidget);

    // Teste para telas grandes (largura > 600)
    tester.binding.window.physicalSizeTestValue = Size(800, 600);  // Definindo um tamanho de tela grande
    await tester.pumpAndSettle();

    // Verificar se o layout foi exibido corretamente com Row para telas grandes
    expect(find.byType(Row), findsOneWidget);
    expect(find.byType(Column), findsNothing);  // Garantir que o Column não está sendo exibido

    // Teste para telas pequenas (largura < 600)
    tester.binding.window.physicalSizeTestValue = Size(400, 600);  // Definindo um tamanho de tela pequena
    await tester.pumpAndSettle();

    // Verificar se o layout foi exibido corretamente com Column para telas pequenas
    expect(find.byType(Column), findsOneWidget);
    expect(find.byType(Row), findsNothing);  // Garantir que o Row não está sendo exibido
  });
}
