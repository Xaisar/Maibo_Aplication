import 'package:get/get.dart';
import 'package:maibo/app/data/models/like_model.dart';
import 'package:maibo/app/data/models/mahasiswa_model.dart';
import 'package:maibo/app/data/models/organization_model.dart';

import '../../../data/models/comment_model.dart';
import '../../../data/models/postingan_model.dart';

class DetailPostMahasiswaController extends GetxController {
  Postingan post = Postingan(
      id: 0,
      gambar: "assets/images/gambar1.jpg",
      deskripsi: "Pelatihan BRISIK membahasa mengenai program robot avoid",
      organization: Organization(
          id: 0,
          nama: "UKM Robotika Poliwangi",
          deskripsi: "Tempat perkumpulan para pendiri robot",
          gambar: "assets/images/image2.jpg"),
      like: [
        Like(
            suka: true,
            mahasiswa: Mahasiswa(
                id: 0,
                nama: "Xavier Is'ad Ariel",
                nim: "362155401117",
                contact: "08746433635"))
      ],
      comment: [
        Comment(
            id: 0,
            comment: "Hallo gimana kabar nya",
            mahasiswa: Mahasiswa(
                id: 1,
                nama: "Wahyu Sahri ramadhan",
                nim: "362154625251",
                contact: "097363644633")),
        Comment(
            id: 1,
            comment: "baik-baik aja",
            mahasiswa: Mahasiswa(
                id: 2,
                nama: "Xavier Is'ad Ariel",
                nim: "362156473",
                contact: "09774646333")),
        Comment(
            id: 1,
            comment: "kerja dimana",
            mahasiswa: Mahasiswa(
                id: 2,
                nama: "Wahyu Sahri ramadhan",
                nim: "362156473",
                contact: "09774646333")),
        Comment(
            id: 1,
            comment: "jadi frelancer saya",
            mahasiswa: Mahasiswa(
                id: 2,
                nama: "Xavier Is'ad Ariel",
                nim: "362156473",
                contact: "09774646333")),
        Comment(
            id: 1,
            comment: "wah enak tu mas",
            mahasiswa: Mahasiswa(
                id: 2,
                nama: "Wahyu Sahri ramadhan",
                nim: "362156473",
                contact: "09774646333")),
      ]);

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
