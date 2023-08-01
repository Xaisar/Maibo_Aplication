class Register {
  String? nama;
  String? email;
  String? contact;
  String? password;
  String? confirmPasssword;

  Register(
      {this.nama,
      this.email,
      this.contact,
      this.password,
      this.confirmPasssword});

  Register.fromJson(Map<String, dynamic> json) {
    nama = json['nama'];
    email = json['email'];
    contact = json['contact'];
    password = json['password'];
    confirmPasssword = json['confirm_passsword'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['nama'] = nama;
    data['email'] = email;
    data['contact'] = contact;
    data['password'] = password;
    data['confirm_passsword'] = confirmPasssword;
    return data;
  }
}
