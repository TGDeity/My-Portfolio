import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'providers/all_providers.dart';
import 'widgets/future_provider.dart';
import 'widgets/title_widget.dart';
import 'widgets/todo_list_item_widget.dart';
import 'widgets/toolbar_widget.dart';


class TodoApp extends ConsumerWidget {
  TodoApp({Key? key}) : super(key: key);

  final newTodoController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var allTodos = ref.watch(filteredTodoListProvider);
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        children: [
          const TitleWidget(),
          TextField(
            controller: newTodoController,
            decoration:
                const InputDecoration(labelText: 'Neler Yapacaksın Bugün?'),
            onSubmitted: (newTodoDeger) {
              //bu tür callback fonksiyonlarda read kullanmalıyız.
              ref
                  .read(todoListProvider.notifier)
                  .addTodo(description: newTodoDeger);
            },
          ),
          const SizedBox(height: 20),
          const ToolBarWidget(),
          if (allTodos.isEmpty)
            const Center(child: Text('Bu Koşullara Uygun Todosunuz yok!'))
          else
            const SizedBox(),
          for (var i = 0; i < allTodos.length; i++)
            //Dismissible ile sağa kaydırıp yok edebiliriz oradaki veriyi bunun için key lazımdır o yüzden ValueKey Sınıfını kullanabiliriz allTodosun o anki indexinin id'sini alıyoruz ve key olarak atıyoruz.
            Dismissible(
                onDismissed: ((_) => ref
                    .read(todoListProvider.notifier)
                    .remove(silinecekTodo: allTodos[i])),
                key: ValueKey(allTodos[i].id),
                child: ProviderScope(overrides: [
                  //!all providerste fırlattığımız hatayı burada değerlendiriyoruz ve değer ataması yaptırıyoruz
                  currentTodo.overrideWithValue(allTodos[i])
                ], child: TodoListItemWidget())),
          ElevatedButton(
              onPressed: (() {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => FutureProviderExample()));
              }),
              child: const Text('FutureProvider'))
        ],
      ),
    );
  }
}
