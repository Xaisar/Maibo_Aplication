import 'jurusan_model.dart';

class Prodi {
  int? id;
  String? nama;
  Jurusan? jurusan;

  Prodi({this.id, this.nama});

  Prodi.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nama = json['nama'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['nama'] = nama;
    return data;
  }
}
