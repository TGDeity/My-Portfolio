import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:uuid/uuid.dart';

import '../models/todo_model.dart';
import 'todo_list_manager.dart';

final todoListProvider =
    StateNotifierProvider<TodoListManager, List<TodoModel>>(
  ((ref) {
    return TodoListManager(
      [
        //uuid bize otomatik id tanımlar bir pakettir ve v1,v2.. gibi id verme yöntemleri vardır genellikle v4 kullanılır.
        TodoModel(id: const Uuid().v4(), description: 'Spora git!'),
        TodoModel(id: const Uuid().v4(), description: 'Alışverişe git!'),
        TodoModel(id: const Uuid().v4(), description: 'Ders Çalış!'),
        TodoModel(id: const Uuid().v4(), description: 'TV izle!'),
      ],
    );
  }),
);

enum TodoListFilter { all, active, completed }

final todoListFilter = StateProvider<TodoListFilter>(((ref) {
  return TodoListFilter.all;
}));

final filteredTodoListProvider = Provider<List<TodoModel>>(((ref) {
  final filter = ref.watch(todoListFilter);
  final todoList = ref.watch(todoListProvider);

  switch (filter) {
    case TodoListFilter.all:
      return todoList;
    case TodoListFilter.completed:
      return todoList.where((element) => element.completed).toList();
    case TodoListFilter.active:
      return todoList.where((element) => !element.completed).toList();
  }
}));

final unCompletedTodoCount = Provider(((ref) {
  final allTodo = ref.watch(todoListProvider);
  final count = allTodo.where((element) => !element.completed).length;
  return count;
}));

final currentTodo = Provider<TodoModel>(((ref) {
  throw UnimplementedError(); //hata fırlattırıp hatayı fırlattığımız yerde o anki index değerini bilemediğimiz için yalandan hata fırlatıp diğer tarafta yakalıyoruz ve ProviderScope ile sarmaladığımız için iş yaptırabiliyoruz. çünkü ben vereceğim değeri bilmiyorum for döngüsünün içinde çalışıp id'yi bize o anda veriyor
}));
