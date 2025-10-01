import 'package:flutter/cupertino.dart';
import 'package:todo_list_v2/app/data/repositories/todo_repositories.dart';
import 'package:todo_list_v2/app/domain/models/todo_model.dart';

class TodoController {
  List<TodoModel> todos = [];

  final TodoRepository _repository;
  final state = ValueNotifier<TodoState>(TodoState.start);

  TodoController([TodoRepository? repository]) : _repository = repository ?? TodoRepository();

  Future start() async {
    state.value = TodoState.loading;
    try {
      todos = await _repository.fetchTodos();
      state.value = TodoState.success;
    } catch (e) {
      state.value = TodoState.error;
    }
  }
}

enum TodoState { start, loading, success, error }
