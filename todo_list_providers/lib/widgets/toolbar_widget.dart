import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


import '../providers/all_providers.dart';

class ToolBarWidget extends ConsumerWidget {
  const ToolBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
/* 
    //providerin notifierini izlediğimiz halde güncelleme yapmıyordu o halde bizde varolan listeyi ele alır ve completed'ine ulaşırız.
    int onCompletedTodoCount = ref
        .watch(todoListProvider)
        .where((element) => !element.completed)
        .length; */

    var currentFilter = TodoListFilter.all;

    Color changeTextColor(TodoListFilter filt) {
      return currentFilter == filt ? Colors.orange : Colors.black;
    }

    final onCompletedTodoCount = ref.watch(unCompletedTodoCount);
    currentFilter = ref.watch(todoListFilter);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            onCompletedTodoCount == 0
                ? 'Tüm Görevler OK'
                : '$onCompletedTodoCount Görev Tamamlanmadı',
            overflow: TextOverflow
                .clip, //burası çok uzarsa sonuna 3 nokta koyar taşma olursa :)
          ),
        ),
        //! Tooltip Widgeti Flutter tarafından sağlanır ve üstüne gelindğinde bilgi penceresini gösteir.
        Tooltip(
          message: 'All todos',
          child: TextButton(
              style: TextButton.styleFrom(
                  primary: changeTextColor(TodoListFilter.all)),
              onPressed: () {
                ref.read(todoListFilter.notifier).state = TodoListFilter.all;
              },
              child: const Text('All')),
        ),
        Tooltip(
          message: 'Only Uncompleted Todos',
          child: TextButton(
              style: TextButton.styleFrom(
                  primary: changeTextColor(TodoListFilter.active)),
              onPressed: () {
                ref.read(todoListFilter.notifier).state = TodoListFilter.active;
              },
              child: const Text('Active')),
        ),
        Tooltip(
          message: 'Only Completed Todos',
          child: TextButton(
              style: TextButton.styleFrom(
                  primary: changeTextColor(TodoListFilter.completed)),
              onPressed: () {
                ref.read(todoListFilter.notifier).state =
                    TodoListFilter.completed;
              },
              child: const Text('Completed')),
        ),
      ],
    );
  }
}
