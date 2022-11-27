//soyutlama yapacağız. öyle bir algoritma yazmalısınki ileride hive yerine başka bir veritabanı kullanmak istersen o ürün buraya yazılan metodları gerçekleştirsin.

import 'package:hive_flutter/adapters.dart';

import '../model/task_model.dart';

abstract class LocalStorage {
  Future<void> addTask({required Task task});
  Future<Task?> getTask({required String id});
  Future<List<Task>> getAllTask();
  Future<bool> deleteTask({required Task task});
  Future<Task> updateTask({required Task task});
}

class HiveLocalStorageee extends LocalStorage {
  //ctrl+. ile HiveLocalStorageee üstünde otomatik oluşturduk. ve şimdi nasıl yapılacağını göstereceğiz.

  late Box<Task> _taskBox;
  HiveLocalStorageee() {
    _taskBox = Hive.box<Task>(
        'tasks'); // mainde box setupunu kurarken ismini tasks olarak koyduk o yüzden boxu açarken birebir aynı olmalı
  }

  @override
  Future<void> addTask({required Task task}) async {
    await _taskBox.put(task.id, task);
  }

  @override
  Future<bool> deleteTask({required Task task}) async {
    await task
        .delete(); //! Task modelde HiveObject Kullandığımız için task.delete() diyip anında silebiliriz güzellik
    //await _taskBox.delete(task.id); HiveObject Kullanılmadıysa bu yöntemi kullanırız.

    return true;
  }

  @override
  Future<List<Task>> getAllTask() async {
    List<Task> allTask = <Task>[];
    allTask = _taskBox.values.toList(); //!bütün veirleri çektik

    if (allTask.isNotEmpty) {
      allTask.sort((Task a, Task b) => a.createdAt.compareTo(b
          .createdAt)); //a'nın oluşturulmuş indexi ile b'Ninkini kıyasla ve sort et.

    }
    return allTask;
  }

  @override
  Future<Task?> getTask({required String id}) async {
    if (_taskBox.containsKey(id)) {
      return _taskBox.get(id);
    } else {
      return null;
    }
  }

  @override
  Future<Task> updateTask({required Task task}) async {
    await task.save(); //parametre olan gelen görevi save'liyoruz
    return task;
  }
}
