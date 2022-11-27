import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';
part 'task_model.g.dart'; //!hive için unutulmaması ve ilk başta yazılması gereken arkadaş.

//!hive'da kendi oluşturduğumuz sınıfları saklayabilmemiz için HiveFiled ve HiveType'i kullanmalıyız.

@HiveType(typeId: 1)
class Task extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  String name;

  @HiveField(2)
  final DateTime createdAt; //oluşturulma tarihi

  @HiveField(3)
  bool isCompleted; //görev tamamlandı mı?

  //! her şeyi tamamladıktan sonra en son terminale flutter packages pub run build_runner build komutunu girmemiz gerekiyor
  //!ve son olarak main dartta ben adapter oluşturdum sana register ediyorum

  Task(
      {required this.id,
      required this.name,
      required this.createdAt,
      required this.isCompleted});

  //!Constructer değer return edemezdi fakat factory ile değer döndürmesini sağlatabiliriz.
  factory Task.olustur({required String name, required DateTime createdAt}) {
    return Task(
        id: const Uuid().v1(),
        name: name,
        createdAt: createdAt,
        isCompleted: false);
  }
}
