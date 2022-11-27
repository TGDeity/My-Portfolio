// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/all_providers.dart';


//!ConsumerStateful widget'ta Widget ref'i yazmaya ihtiyaç yoktu zaten içerisinde otomatik olarak ref'i taşımaktadır ve statefullWidget gibi iş yapar.
class TodoListItemWidget extends ConsumerStatefulWidget {
  TodoListItemWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TodoListItemWidgetState();
}

class _TodoListItemWidgetState extends ConsumerState<TodoListItemWidget> {
  late FocusNode _textFocusNode;
  late TextEditingController _textController;
  bool _hasFocus = false;

  @override
  void initState() {
    super.initState();
    _textFocusNode = FocusNode();
    _textController = TextEditingController();
  }

  @override
  void dispose() {
    //! genellikle dispose'da ilk kaynaklar silinr sonra super'e verilir.
    _textFocusNode.dispose();
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final currentTodoItem = ref.watch(currentTodo);
    return Focus(
      onFocusChange: (isFocused) {
        if (!isFocused) {
          setState(() {
            _hasFocus = false;
          });

          ref.read(todoListProvider.notifier).edit(
              id: currentTodoItem.id, newDescription: _textController.text);
        }
      },
      child: ListTile(
        onTap: () {
          setState(() {
            _hasFocus = true;
            _textController.text = currentTodoItem.description;
          });
          _textFocusNode.requestFocus(); //!onu focusla.
        },
        leading: Checkbox(
          value: currentTodoItem.completed,
          onChanged: (value) {
            ref.read(todoListProvider.notifier).toggle(id: currentTodoItem.id);
          },
        ),
        title: _hasFocus
            ? TextField(
                focusNode: _textFocusNode,
                controller: _textController,
              )
            : Text(currentTodoItem.description),
      ),
    );
  }
}
