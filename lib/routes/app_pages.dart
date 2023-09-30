import 'package:get/get.dart';
import 'package:herculismobile/bindings/forgot_password_binding.dart';
import 'package:herculismobile/bindings/login_binding.dart';
import 'package:herculismobile/bindings/main_binding.dart';
import 'package:herculismobile/bindings/register_binding.dart';
import 'package:herculismobile/views/forgot_password_view.dart';
import 'package:herculismobile/views/login_view.dart';
import 'package:herculismobile/views/main_view.dart';
import 'package:herculismobile/views/register_view.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: '/login',
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: '/register',
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: '/forgot-password',
      page: () => ForgotPasswordView(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: '/',
      page: () => MainView(),
      binding: MainBinding(),
    ),
  ];
}
