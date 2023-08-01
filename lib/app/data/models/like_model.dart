import 'mahasiswa_model.dart';

class Like {
  bool? suka;
  Mahasiswa? mahasiswa;

  Like({this.suka});

  Like.fromJson(Map<String, dynamic> json) {
    suka = json['suka'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['suka'] = suka;
    return data;
  }
}
