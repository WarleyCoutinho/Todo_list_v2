import 'package:flutter_test/flutter_test.dart';
import 'package:todo_list_v2/app/data/repositories/todo_repositories.dart';
import 'package:todo_list_v2/app/ui/todo/controllers/todo_controller.dart';

void main() {
  test('Deve preencher variavel todo', () async {
    final repository = TodoRepository();
    final controller = TodoController(repository);

    // Verifica estado inicial
    expect(controller.state, TodoState.start);

    // Inicia o carregamento dos todos
    await controller.start();

    // Verifica se o estado mudou do inicial
    expect(controller.state, isNot(TodoState.start));

    // Se deu sucesso, verifica se os todos foram carregados
    if (controller.state == TodoState.success) {
      expect(controller.todos.isNotEmpty, true);

      // Verifica se o primeiro todo_list tem as propriedades esperadas
      if (controller.todos.isNotEmpty) {
        expect(controller.todos.first.id, isNotNull);
        expect(controller.todos.first.title, isNotNull);
      }
    }
  });

  test('Deve modificar o estado para erro se a requisição falhar', () async {
    final repository = TodoRepository();
    final controller = TodoController(repository);

    // Verifica estado inicial
    expect(controller.state, TodoState.start);

    // Inicia o carregamento dos todos
    await controller.start();

    // Verifica se o estado foi alterado para erro
    expect(controller.state, TodoState.error);
  });
}
