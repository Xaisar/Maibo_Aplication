import 'mahasiswa_model.dart';

class User {
  int? id;
  String? email;
  Mahasiswa? mahasiswa;

  static var obs;

  User({this.id, this.email, this.mahasiswa});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['email'] = email;
    return data;
  }
}
