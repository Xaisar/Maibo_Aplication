import 'mahasiswa_model.dart';

class Comment {
  int? id;
  String? comment;
  String? tanggal;
  Mahasiswa? mahasiswa;

  Comment({this.id, this.comment, this.tanggal, this.mahasiswa});

  Comment.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    comment = json['comment'];
    tanggal = json['tanggal'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['comment'] = comment;
    data['tanggal'] = tanggal;
    return data;
  }
}
