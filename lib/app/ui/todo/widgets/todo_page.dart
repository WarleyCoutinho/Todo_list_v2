import 'package:flutter/material.dart';
import 'package:todo_list_v2/app/ui/todo/controllers/todo_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = TodoController();

  _success() {
    return ListView.builder(
      itemCount: controller.todos.length,
      itemBuilder: (context, index) {
        final todo = controller.todos[index];
        return ListTile(
          leading: Checkbox(value: todo.completed, onChanged: (bool? value) {}),
          title: Text(
            todo.title ?? 'Sem título',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          subtitle: Text('ID: ${todo.id} - Usuário: ${todo.userId}'),
          trailing: Icon(
            todo.completed == true ? Icons.check_circle_outline : Icons.error,
            color: todo.completed == true ? Colors.green : Colors.red,
          ),
        );
      },
    );
  }

  _error() {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          controller.start();
        },
        child: const Text('Tentar Novamente'),
      ),
    );
  }

  _loading() {
    return const Center(child: CircularProgressIndicator());
  }

  _start() {
    return Container();
  }

  stateWidgetBody(TodoState state) {
    switch (state) {
      case TodoState.start:
        return _start();
      case TodoState.loading:
        return _loading();
      case TodoState.success:
        return _success();
      case TodoState.error:
        return _error();
    }
  }

  @override
  void initState() {
    super.initState();
    controller.start();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
        actions: [
          IconButton(
            onPressed: () {
              controller.start();
            },
            icon: const Icon(Icons.refresh_outlined),
          ),
        ],
      ),
      body: AnimatedBuilder(
        animation: controller.state,
        builder: (context, child) {
          return stateWidgetBody(controller.state.value);
        },
      ),
    );
  }
}
