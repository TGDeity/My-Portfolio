import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todoapphive/data/local_storage_hive.dart';
import 'package:todoapphive/model/task_model.dart';
import 'package:todoapphive/pages/MyHomePage.dart';

final locator = GetIt
    .instance; //!get it sınıf bağımlılıkları varsa birbirine bağlamak için kullanılır 1.adım budur iniState içinde kullanılır.

void setup() {
  locator.registerSingleton<LocalStorage>(
      HiveLocalStorageee()); //!2. adım olarak bağladık yarın başka bir localStorage sınıfı kullanırsak tek yapmamız gereken buraya ismini geçmek olacaktır.
  //!3.adım olarak runApp'ten önce register olmadan önce çağırmamız lazım
}

Future<void> setupHive() async //!hive setupunuda kuruyoruz
{
  await Hive.initFlutter();
  Hive.registerAdapter(TaskAdapter());
  //!Hive adapter kayıt işlemi için task_model.g dosyamızda oluşturulan TaskAdapteri kayıt ettiriyoruz.

  var taskBox = await Hive.openBox<Task>('tasks'); //kutuyu açıyoruz

  for (var tasklar in taskBox.values) {
    if (tasklar.createdAt.day != DateTime.now().day) {
      taskBox.delete(tasklar.id);
    }
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // HİVE runApp'ten önce çalıştırılması gereken yerler için WidgetsFlutterBinding Kullanılır Biz Hive'nin adapterini kayıt ettireceğimiz için ve runApp'ten önce çalışması geretiği için bu kod bloğunun uygulama patlamasın diye initialize ediyoruz.

  await EasyLocalization.ensureInitialized(); //dil kütüphanesi initailze edildi

  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  await setupHive(); //appten önce veritabanını açıyoruz.
  setup();
  runApp(EasyLocalization(
      fallbackLocale: const Locale(
          'en', 'US'), //!bir hata çıkınca ingilizceden bir bölüm kullan.
      supportedLocales: const [Locale('en', 'US'), Locale('tr', 'TR')],
      path: 'assets/translations',
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.deviceLocale, //!cihazın diliyle başla.
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            backgroundColor: Colors.blue,
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black)),
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
