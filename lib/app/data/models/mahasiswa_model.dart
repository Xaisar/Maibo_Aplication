class Mahasiswa {
  int? id;
  String? nama;
  String? nim;
  String? contact;

  Mahasiswa({this.id, this.nama, this.nim, this.contact});

  Mahasiswa.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nama = json['nama'];
    nim = json['nim'];
    contact = json['contact'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['nama'] = nama;
    data['nim'] = nim;
    data['contact'] = contact;
    return data;
  }
}
