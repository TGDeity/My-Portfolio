import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:todoapphive/data/local_storage_hive.dart';
import 'package:todoapphive/main.dart';

import '../model/task_model.dart';
import 'task_list_item.dart';

class CustomSearchDelegate extends SearchDelegate {
  //flutterin bize sunduğu pakettir SearchDelegate sınıfı

  final List<Task> allTasks;

  CustomSearchDelegate({required this.allTasks});

  @override
  List<Widget>? buildActions(BuildContext context) {
    //arama kısmının sağ tarafındaki iconları

    return [
      IconButton(
          onPressed: () {
            query.isEmpty
                ? null
                : query =
                    ''; //!kullanıcının girdiği query(değer) boşssa tıklanamasın değilse boş '' değer ata.
          },
          icon: const Icon(
            Icons.clear,
            color: Colors.black,
          ))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    //arama kısmının en başındaki iconları
    return IconButton(
      onPressed: () {
        close(context, null);
        //aynı şekilde SearchDelegate sınıfı bize close sınıfıda veriyor ve null ile bize açılan sayfaya herhangi bir değer göndermediğimiz için null geçiyorum
      },
      icon: const Icon(Icons.arrow_back_ios),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    //arama tuşuna basınca sonuçlar nasıl gösterilsin
    List<Task> filteredList = allTasks
        .where(
            (gorev) => gorev.name.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return filteredList.length > 0
        ? ListView.builder(
            itemCount: filteredList.length,
            itemBuilder: (context, index) {
              var oankiListeElemani = filteredList[index];
              return Dismissible(
                  background: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.delete,
                        color: Colors.red,
                        size: 70,
                      )
                    ],
                  ),
                  key: Key(oankiListeElemani.id),
                  onDismissed: (neyapayim) async {
                    await locator<LocalStorage>()
                        .deleteTask(task: oankiListeElemani);

                    filteredList
                        .removeAt(index); //local listeden sildikten sonra

                    //gider veritabanındanda siler.
                  },
                  child: TaskItem(task: oankiListeElemani));
            })
        : Center(
            child: const Text('not_found').tr(),
          );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    //kullanıcının yazdığı kelime veya harfe göre akıllı  gösterme  yapan sistem

    //arama tuşuna basınca sonuçlar nasıl gösterilsin
    List<Task> filteredList = allTasks
        .where(
            (gorev) => gorev.name.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return filteredList.length > 0
        ? ListView.builder(
            itemCount: filteredList.length,
            itemBuilder: (context, index) {
              var oankiListeElemani = filteredList[index];
              return Dismissible(
                  background: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.delete,
                        color: Colors.red,
                        size: 70,
                      )
                    ],
                  ),
                  key: Key(oankiListeElemani.id),
                  onDismissed: (neyapayim) async {
                    await locator<LocalStorage>()
                        .deleteTask(task: oankiListeElemani);

                    filteredList
                        .removeAt(index); //local listeden sildikten sonra

                    //gider veritabanındanda siler.
                  },
                  child: TaskItem(task: oankiListeElemani));
            })
        : Center(
            child: const Text('not_found').tr(),
          );
  }
}
