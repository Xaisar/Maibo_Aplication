class Organization {
  int? id;
  String? nama;
  String? namaSingkat;
  String? deskripsi;
  String? gambar;

  Organization(
      {this.id, this.nama, this.namaSingkat, this.deskripsi, this.gambar});

  Organization.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nama = json['nama'];
    namaSingkat = json['nama_singkat'];
    deskripsi = json['deskripsi'];
    gambar = json['gambar'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['nama'] = nama;
    data['nama_singkat'] = namaSingkat;
    data['deskripsi'] = deskripsi;
    data['gambar'] = gambar;
    return data;
  }
}
