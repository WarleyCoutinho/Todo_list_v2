import 'package:flutter_test/flutter_test.dart';
import 'package:todo_list_v2/app/data/repositories/todo_repositories.dart';

void main() {
  final repository = TodoRepository();

  test('Deve trazer uma lista de TodoModel', () async {
    final list = await repository.fetchTodos();
    //print(list[1].title);
    expect(list[1].title, 'quis ut nam facilis et officia qui');
  });
}
