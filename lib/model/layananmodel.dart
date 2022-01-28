import 'dart:convert';
import 'package:http/http.dart' as http;

class LayananModel {
  String nama;
  int harga;

  LayananModel({
    this.nama,
    this.harga,
  });

  factory LayananModel.create(Map<String, dynamic> object) {
    return LayananModel(
      nama: object['nama'].toString(),
      harga: object['harga'],
    );
  }

  static Future getLayananModel() async {
    Uri api = Uri.parse('http://192.168.0.108:5000/api/services');

    var response = await http.get(api);
    var object = json.decode(response.body);

    List<LayananModel> listLayananModel = [];
    for (var item in object) {
      listLayananModel
          .add(LayananModel.create(item as Map<String, dynamic>));
    }

    return listLayananModel;
  }
}
