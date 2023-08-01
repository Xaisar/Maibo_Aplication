import 'package:get/get.dart';

import '../modules/about_us/bindings/about_us_binding.dart';
import '../modules/about_us/views/about_us_view.dart';
import '../modules/change_password/bindings/change_password_binding.dart';
import '../modules/change_password/views/change_password_view.dart';
import '../modules/data_diri_mahasiswa/bindings/data_diri_mahasiswa_binding.dart';
import '../modules/data_diri_mahasiswa/views/data_diri_mahasiswa_view.dart';
import '../modules/detail_akun_mahasiswa/bindings/detail_akun_mahasiswa_binding.dart';
import '../modules/detail_akun_mahasiswa/views/detail_akun_mahasiswa_view.dart';
import '../modules/detail_event_mahasiswa/bindings/detail_event_mahasiswa_binding.dart';
import '../modules/detail_event_mahasiswa/views/detail_event_mahasiswa_view.dart';
import '../modules/detail_organization_mahasiswa/bindings/detail_organization_mahasiswa_binding.dart';
import '../modules/detail_organization_mahasiswa/views/detail_organization_mahasiswa_view.dart';
import '../modules/detail_post_mahasiswa/bindings/detail_post_mahasiswa_binding.dart';
import '../modules/detail_post_mahasiswa/views/detail_post_mahasiswa_view.dart';
import '../modules/detail_rekrutmen_mahasiswa/bindings/detail_rekrutmen_mahasiswa_binding.dart';
import '../modules/detail_rekrutmen_mahasiswa/views/detail_rekrutmen_mahasiswa_view.dart';
import '../modules/edit_data_diri_mahasiswa/bindings/edit_data_diri_mahasiswa_binding.dart';
import '../modules/edit_data_diri_mahasiswa/views/edit_data_diri_mahasiswa_view.dart';
import '../modules/event_list_mahasiswa/bindings/event_list_mahasiswa_binding.dart';
import '../modules/event_list_mahasiswa/views/event_list_mahasiswa_view.dart';
import '../modules/event_mahasiswa/bindings/event_mahasiswa_binding.dart';
import '../modules/event_mahasiswa/views/event_mahasiswa_view.dart';
import '../modules/full_image/bindings/full_image_binding.dart';
import '../modules/full_image/views/full_image_view.dart';
import '../modules/home_mahasiswa/bindings/home_mahasiswa_binding.dart';
import '../modules/home_mahasiswa/views/home_mahasiswa_view.dart';
import '../modules/index/bindings/index_binding.dart';
import '../modules/index/views/index_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/myaccount_mahasiswa/bindings/myaccount_mahasiswa_binding.dart';
import '../modules/myaccount_mahasiswa/views/myaccount_mahasiswa_view.dart';
import '../modules/myactivity_mahasiswa/bindings/myactivity_mahasiswa_binding.dart';
import '../modules/myactivity_mahasiswa/views/myactivity_mahasiswa_view.dart';
import '../modules/myorganization_mahasiswa/bindings/myorganization_mahasiswa_binding.dart';
import '../modules/myorganization_mahasiswa/views/myorganization_mahasiswa_view.dart';
import '../modules/organization_mahasiswa/bindings/organization_mahasiswa_binding.dart';
import '../modules/organization_mahasiswa/views/organization_mahasiswa_view.dart';
import '../modules/post_mahasiswa/bindings/post_mahasiswa_binding.dart';
import '../modules/post_mahasiswa/views/post_mahasiswa_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';
import '../modules/rekrutmen_list_mahasiswa/bindings/rekrutmen_list_mahasiswa_binding.dart';
import '../modules/rekrutmen_list_mahasiswa/views/rekrutmen_list_mahasiswa_view.dart';
import '../modules/riwayat_event_mahasiswa/bindings/riwayat_event_mahasiswa_binding.dart';
import '../modules/riwayat_event_mahasiswa/views/riwayat_event_mahasiswa_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.INDEX;

  static final routes = [
    GetPage(
      name: _Paths.INDEX,
      page: () => const IndexView(),
      binding: IndexBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.EVENT_MAHASISWA,
      page: () => EventMahasiswaView(),
      binding: EventMahasiswaBinding(),
    ),
    GetPage(
      name: _Paths.HOME_MAHASISWA,
      page: () => HomeMahasiswaView(),
      binding: HomeMahasiswaBinding(),
    ),
    GetPage(
      name: _Paths.ORGANIZATION_MAHASISWA,
      page: () => const OrganizationMahasiswaView(),
      binding: OrganizationMahasiswaBinding(),
    ),
    GetPage(
      name: _Paths.MYACTIVITY_MAHASISWA,
      page: () => const MyactivityMahasiswaView(),
      binding: MyactivityMahasiswaBinding(),
    ),
    GetPage(
      name: _Paths.POST_MAHASISWA,
      page: () => PostMahasiswaView(),
      binding: PostMahasiswaBinding(),
    ),
    GetPage(
      name: _Paths.MYACCOUNT_MAHASISWA,
      page: () => const MyaccountMahasiswaView(),
      binding: MyaccountMahasiswaBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_EVENT_MAHASISWA,
      page: () => const DetailEventMahasiswaView(),
      binding: DetailEventMahasiswaBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_REKRUTMEN_MAHASISWA,
      page: () => const DetailRekrutmenMahasiswaView(),
      binding: DetailRekrutmenMahasiswaBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_AKUN_MAHASISWA,
      page: () => const DetailAkunMahasiswaView(),
      binding: DetailAkunMahasiswaBinding(),
    ),
    GetPage(
      name: _Paths.DATA_DIRI_MAHASISWA,
      page: () => const DataDiriMahasiswaView(),
      binding: DataDiriMahasiswaBinding(),
    ),
    GetPage(
      name: _Paths.RIWAYAT_EVENT_MAHASISWA,
      page: () => const RiwayatEventMahasiswaView(),
      binding: RiwayatEventMahasiswaBinding(),
    ),
    GetPage(
      name: _Paths.FULL_IMAGE,
      page: () => const FullImageView(),
      binding: FullImageBinding(),
    ),
    GetPage(
      name: _Paths.EVENT_LIST_MAHASISWA,
      page: () => const EventListMahasiswaView(),
      binding: EventListMahasiswaBinding(),
    ),
    GetPage(
      name: _Paths.REKRUTMEN_LIST_MAHASISWA,
      page: () => const RekrutmenListMahasiswaView(),
      binding: RekrutmenListMahasiswaBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_ORGANIZATION_MAHASISWA,
      page: () => DetailOrganizationMahasiswaView(),
      binding: DetailOrganizationMahasiswaBinding(),
    ),
    GetPage(
      name: _Paths.ABOUT_US,
      page: () => const AboutUsView(),
      binding: AboutUsBinding(),
    ),
    GetPage(
      name: _Paths.CHANGE_PASSWORD,
      page: () => ChangePasswordView(),
      binding: ChangePasswordBinding(),
    ),
    GetPage(
      name: _Paths.MYORGANIZATION_MAHASISWA,
      page: () => const MyorganizationMahasiswaView(),
      binding: MyorganizationMahasiswaBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_DATA_DIRI_MAHASISWA,
      page: () => const EditDataDiriMahasiswaView(),
      binding: EditDataDiriMahasiswaBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_POST_MAHASISWA,
      page: () => DetailPostMahasiswaView(),
      binding: DetailPostMahasiswaBinding(),
    ),
  ];
}
