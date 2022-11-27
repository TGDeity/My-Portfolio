import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:todoapphive/data/local_storage_hive.dart';
import 'package:todoapphive/helper/translation_helper.dart';
import 'package:todoapphive/main.dart';
import 'package:todoapphive/model/task_model.dart';
import 'package:todoapphive/widgets/aranan_kelime.dart';
import 'package:todoapphive/widgets/task_list_item.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List<Task> allTasks;

  late LocalStorage _localStorage;

  //!HiveLocalStorageee'de çağırabiliridk fakat soyutlanma örneği için ve dinamiklik açısından yarın bir gün veritabanını değiştirirsek diğer kodlar etkilenmesin diye bir üst sınıfını çağırıyoruz

  @override
  initState() {
//!statefull widgette buildden önce initState çalışır genelliklee atamalar burada yapılır
    super.initState();
    _localStorage = locator<
        LocalStorage>(); //! global lacator fonksiyonu ile verilerimizi alıyoruz.
    allTasks = <Task>[];
    getaAllTasksDB();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: GestureDetector(
          onTap: () => _showButtonAddtaskBottomSheet(context),
          child: const Text(
            "title",
            style: TextStyle(color: Colors.black),
          ).tr(), //!translate yaptırıyoruz json verimizin anahtarını veriyoruz Bugün neler yapacaksın?
        ),
        centerTitle: false,
        //!centerTitle:false IOS'ta başlıklar direkt ortalanıyor bunun önüne geçmek için bu özelliği devre dışı bırakıyoruzki en baştan başlasın.
        actions: [
          IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                _showSearchPage();
              }),
          IconButton(
              onPressed: () {
                _showButtonAddtaskBottomSheet(context);
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: allTasks.isNotEmpty
          ? ListView.builder(
              itemCount: allTasks.length,
              itemBuilder: (context, index) {
                var oankiListeElemani = allTasks[index];
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
                    onDismissed: (neyapayim) {
                      allTasks.removeAt(index); //local listeden sildikten sonra
                      _localStorage.deleteTask(
                          task:
                              oankiListeElemani); //gider veritabanındanda siler.
                      setState(() {});
                    },
                    child: TaskItem(task: oankiListeElemani));
              })
          : Center(
              child: const Text("empyt_task_list").tr(), //!hadi görev ekle
            ),
    );
  }

  void _showButtonAddtaskBottomSheet(BuildContext contosk) {
    showModalBottomSheet(
        context: contosk,
        builder: (contaks) {
          return Container(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(contaks).viewInsets.bottom),
            //!MediaQuery'nin viewInsets.bottom özelliği klavye açılırsa onun hemen üst kısmını temsil eder.
            width: MediaQuery.of(contaks).size.width, //ekranın genişliği kadar.
            child: ListTile(
              title: TextField(
                style: const TextStyle(fontSize: 20),
                decoration: InputDecoration(
                    hintText: 'add_task'.tr(), border: InputBorder.none),
                onSubmitted: (yazilanVeri) {
                  Navigator.pop(contaks);
                  if (yazilanVeri.isNotEmpty) {
                    DatePicker.showTimePicker(contaks,
                        locale: TranslationHelper.getDeviceLanguage(context),
                        showTitleActions: true,
                        showSecondsColumn: false,
                        onConfirm: (kullaniciTimeVerisi) async {
                      var yeniEklenecekGorev = Task.olustur(
                          name: yazilanVeri, createdAt: kullaniciTimeVerisi);

                      //allTasks.add(yeniEklenecekGorev); //!veritabanına yazılmayan veri. locallistedir deneme amaçlı yazıldı sonra hive veritabanı işlemleri için alttaki kod blooğuna dönüştürüldü.
                      allTasks.insert(0,
                          yeniEklenecekGorev); //listeye eklenmesini sağlıyoruz.
                      await _localStorage.addTask(task: yeniEklenecekGorev);
                      //veritabanını senkronize ettik.
                      setState(() {});
                    });
                  }
                },
              ),
            ),
          );
        });
  }

  Future<void> getaAllTasksDB() async {
    allTasks = await _localStorage.getAllTask();
    setState(() {});
  }

  void _showSearchPage() async {
    await showSearch(
        context: context, delegate: CustomSearchDelegate(allTasks: allTasks));
    getaAllTasksDB();
  }
}
