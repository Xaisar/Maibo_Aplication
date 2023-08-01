import 'kampus_model.dart';

class Jurusan {
  int? id;
  String? nama;
  Kampus? kampus;

  Jurusan({this.id, this.nama});

  Jurusan.fromJson(Map<String, dynamic> json) {
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
