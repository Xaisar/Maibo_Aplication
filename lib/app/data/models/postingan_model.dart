import 'comment_model.dart';
import 'like_model.dart';
import 'organization_model.dart';

class Postingan {
  int? id;
  String? gambar;
  String? deskripsi;
  Organization? organization;
  List<Like>? like = [];
  List<Comment>? comment = [];

  Postingan(
      {this.id,
      this.gambar,
      this.deskripsi,
      this.like,
      this.comment,
      this.organization});

  Postingan.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    gambar = json['gambar'];
    deskripsi = json['deskripsi'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['gambar'] = gambar;
    data['deskripsi'] = deskripsi;
    return data;
  }
}
