import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';
import '../models/todo_model.dart';

class TodoListManager extends StateNotifier<List<TodoModel>> {
  TodoListManager([List<TodoModel>? initialTodos]) : super(initialTodos ?? []);
  //initialTodos ?? [] eğer initinal todos null değilse bunu kullan null ise boş bir liste yolla.

  void addTodo({required String description}) {
    //!state dediğim anda bana TodoModellerin bulunduğu bir liste verir.
    var eklenecekTodo =
        TodoModel(id: const Uuid().v4(), description: description);

    state = [...state, eklenecekTodo];
    //...collection ile ilgili olan bu kullanımda benim önceki state'nin içindeki  verilerimi koru ve sonra sana gelecek TodoModelleri listenin içine koy.
  }

  
  void toggle({String? id}) {
    state = [
      for (var todo in state)
        if (todo.id == id)
          TodoModel(
              id: todo.id,
              description: todo.description,
              completed: !todo.completed)
        else
          todo,
    ];
  }

  void edit({required String id, required String newDescription}) {
    //EĞER todo.id eşitse id'ye yeni bir TodoModel oluştur id'yi id'ye eşitleyip açıklamayı yeni açıklama ile değiştir. ve completed'i koru bunu tanımalamasaydık model sınıfında completedi default olarak false olarak atamıştık sonuçta.

    state = [
      for (var todo in state)
        if (todo.id == id)
          TodoModel(
              id: id, description: newDescription, completed: todo.completed)
        else
          todo
    ];
  }

  void remove({required TodoModel silinecekTodo}) {
    //!where ile elemanları gezip silinecek id element id'ye eşit değilse listeye atıyor aynı olmayanları bize getirip listeye koyuyor yeni state'de ve eşitse zaten siliyor ve statemizde eleman silinmiş oluyor.
    state = state.where((element) => element.id != silinecekTodo.id).toList();
  }

/* //tamamlanmamış görevlerin sayısını dönderir.
  int onCompletedTodoCount() {
    return state.where((element) => !element.completed).length;
  } */
}
