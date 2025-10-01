import 'package:dio/dio.dart';
import 'package:todo_list_v2/app/domain/models/todo_model.dart';

final baseUrl = 'https://jsonplaceholder.typicode.com/todos';

class TodoRepository {
  final dio = Dio();

  Future<List<TodoModel>> fetchTodos() async {
    final response = await dio.get(baseUrl);
    final list = response.data as List;
    return list.map((e) => TodoModel.fromJson(e)).toList();
  }
}
