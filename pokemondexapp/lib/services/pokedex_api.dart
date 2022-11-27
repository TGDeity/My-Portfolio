import 'dart:convert';
import 'package:dio/dio.dart';

import '../Model/pokemon_model.dart';


class PokeApi {
  static const String _url =
      "https://raw.githubusercontent.com/TGDeity/Project/main/Pokedex.json";

  static Future<List<PokemonModel>> getPokemonData() async {
    List<PokemonModel> _list = [];
    //! Verilerimizi bir listeye atamak için boş bir liste atıyoruz ve son olarak listeyi döndürüyoruz.

    var result = await Dio().get(_url);
    //!Verilerimizi Dio kütüphanesi ile çekiyoruz.

    var pokeList = jsonDecode(result.data)['pokemon'];
    //! Gelen Verilerimiz Pokemon anahtarında saklı olduğu için gelen veriyi dikkatli incelemeliyiz. Buna Göre İşlem yapmalıyız.

    if (pokeList is List) {
      _list = pokeList.map((e) => PokemonModel.fromMap(e)).toList();
      //!ModelData oluştururken fromMap yada jsonMap olarak bir fonksiyon oluşturuyor ve buradan geliyor fromMap fonksiyonu.
      //! Gelen veriyi map ile dağıtıp PokemonModel'de ki fromMap fonksiyonuna yolluyoruz.
    } else {
      return [];
    }
    return _list;
  }
}
