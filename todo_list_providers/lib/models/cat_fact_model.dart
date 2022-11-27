// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CatFactModel {
  final String fact;
  final int lenght;

  //Data Class oluşturmak için Dart data class extension kurduktan sonra fact ve lenghtten birisinin ampülüne tıklaıp generate data class'a tıkladık ve alttaki değerler oluştu
  //yada freeze diye bir kütüphane var oda kullanılabilir.
  CatFactModel(
    this.fact,
    this.lenght,
  );

  CatFactModel copyWith({
    String? fact,
    int? lenght,
  }) {
    return CatFactModel(
      fact ?? this.fact,
      lenght ?? this.lenght,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fact': fact,
      'lenght': lenght,
    };
  }

  factory CatFactModel.fromMap(Map<String, dynamic> map) {
    return CatFactModel(
      map['fact'] ?? '',
      map['lenght']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory CatFactModel.fromJson(String source) =>
      CatFactModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'CatFactModel(fact: $fact, lenght: $lenght)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CatFactModel &&
        other.fact == fact &&
        other.lenght == lenght;
  }

  @override
  int get hashCode => fact.hashCode ^ lenght.hashCode;
}
