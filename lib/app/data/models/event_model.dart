import 'organization_model.dart';

class Event {
  int? id;
  String? gambar;
  String? title;
  String? deskripsi;
  String? daftarMulai;
  String? daftarSelesai;
  String? acaraMulai;
  String? acaraSelesai;
  Organization? organization;

  Event(
      {this.id,
      this.gambar,
      this.title,
      this.deskripsi,
      this.daftarMulai,
      this.daftarSelesai,
      this.acaraMulai,
      this.acaraSelesai,
      this.organization});

  Event.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    gambar = json['gambar'];
    title = json['title'];
    deskripsi = json['deskripsi'];
    daftarMulai = json['daftar_mulai'];
    daftarSelesai = json['daftar_selesai'];
    acaraMulai = json['acara_mulai'];
    acaraSelesai = json['acara_selesai'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['gambar'] = gambar;
    data['title'] = title;
    data['deskripsi'] = deskripsi;
    data['daftar_mulai'] = daftarMulai;
    data['daftar_selesai'] = daftarSelesai;
    data['acara_mulai'] = acaraMulai;
    data['acara_selesai'] = acaraSelesai;
    return data;
  }
}
