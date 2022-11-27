import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todoapphive/data/local_storage_hive.dart';
import 'package:todoapphive/main.dart';

import '../model/task_model.dart';

// ignore: must_be_immutable
class TaskItem extends StatefulWidget {
  Task task;
  TaskItem({Key? key, required this.task}) : super(key: key);


  @override
  State<TaskItem> createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  TextEditingController taskNameController = TextEditingController();

  late LocalStorage _localStorage;

  @override
  void initState() {
    super.initState();
    _localStorage = locator<LocalStorage>();
  }

  @override
  Widget build(BuildContext context) {
    taskNameController.text = widget.task.name;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(.2), blurRadius: 10),
          ]),
      child: ListTile(
        title: widget.task.isCompleted
            ? Text(
                widget.task.name,
                style: const TextStyle(
                    //lineThrough tamamlandığı için üstünü çizdirdik
                    decoration: TextDecoration.lineThrough,
                    color: Colors.grey),
              )
            : TextField(
                autofocus: false,
                minLines: 1,
                maxLines: null,
                textInputAction: TextInputAction
                    .send, //newline için alt satıra geçme tuşu yerine submit tuşunu sabit tutar.
                controller: taskNameController,
                decoration: const InputDecoration(border: InputBorder.none),
                onSubmitted: (degistirilenYeniDeger) {
                  if (degistirilenYeniDeger.length > 2) {
                    widget.task.name = degistirilenYeniDeger;
                    _localStorage.updateTask(
                        task: widget
                            .task); //!veritabanında update işlemini gerçekleştiriyoruz
                  }
                },
              ),
        trailing: Text(
          DateFormat('hh:mm a').format(widget.task.createdAt),
          style: const TextStyle(fontSize: 14, color: Colors.grey),
        ),
        leading: GestureDetector(
          onTap: () {
            widget.task.isCompleted = !widget.task.isCompleted;
            _localStorage.updateTask(
                task: widget.task); //!veri tabanında update işlemi
            setState(() {});
          },
          child: Container(
            decoration: BoxDecoration(
                color: widget.task.isCompleted ? Colors.green : Colors.white,
                border: Border.all(color: Colors.grey, width: 0.8),
                shape: BoxShape.circle),
            child: const Icon(Icons.check, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
