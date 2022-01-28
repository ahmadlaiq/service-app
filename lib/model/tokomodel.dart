import 'dart:convert';
import 'package:http/http.dart' as http;

class TokoModel {
  String nama;
  String alamat;
  String jambuka;
  String jamtutup;
  String kategorilayanan;

  TokoModel({
    this.nama,
    this.alamat,
    this.jambuka,
    this.jamtutup,
    this.kategorilayanan,
  });

  factory TokoModel.create(Map<String, dynamic> object) {
    return TokoModel(
      nama: object['nama'].toString(),
      alamat: object['alamat'].toString(),
      jambuka: object['jam_buka'].toString(),
      jamtutup: object['jam_tutup'].toString(),
      kategorilayanan: object['kategori_layanan'].toString(),
    );
  }

  static Future getTokoModel() async {
    Uri api = Uri.parse('http://192.168.0.108:5000/api/stores');

    var response = await http.get(api);
    var object = json.decode(response.body);

    List<TokoModel> listTokoModel = [];
    for (var item in object) {
      listTokoModel
          .add(TokoModel.create(item as Map<String, dynamic>));
    }

    return listTokoModel;
  }
}
