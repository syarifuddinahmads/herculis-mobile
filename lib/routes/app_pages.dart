import 'package:get/get.dart';
import 'package:herculismobile/bindings/create_newspaper_binding.dart';
import 'package:herculismobile/bindings/create_publisher_binding.dart';
import 'package:herculismobile/bindings/create_transaction_binding.dart';
import 'package:herculismobile/bindings/forgot_password_binding.dart';
import 'package:herculismobile/bindings/login_binding.dart';
import 'package:herculismobile/bindings/main_binding.dart';
import 'package:herculismobile/bindings/newspaper_binding.dart';
import 'package:herculismobile/bindings/publisher_binding.dart';
import 'package:herculismobile/bindings/register_binding.dart';
import 'package:herculismobile/bindings/submit_payment_binding.dart';
import 'package:herculismobile/bindings/transaction_detail_binding.dart';
import 'package:herculismobile/views/auth/forgot_password_view.dart';
import 'package:herculismobile/views/auth/login_view.dart';
import 'package:herculismobile/views/auth/register_view.dart';
import 'package:herculismobile/views/main_view.dart';
import 'package:herculismobile/views/newspaper/create_newspaper_view.dart';
import 'package:herculismobile/views/newspaper/newspaper_view.dart';
import 'package:herculismobile/views/payment/submit_payment.dart';
import 'package:herculismobile/views/publisher/create_publisher_view.dart';
import 'package:herculismobile/views/publisher/publisher_view.dart';
import 'package:herculismobile/views/transaction/create_transaction.dart';
import 'package:herculismobile/views/transaction/detail_transaction.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: '/',
      page: () => MainView(),
      binding: MainBinding(),
    ),
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
      name: '/publisher',
      page: () => PublisherView(),
      binding: PublisherBinding(),
    ),
    GetPage(
      name: '/publisher/create',
      page: () => CreatePublisherView(),
      binding: CreatePublisherBinding(),
    ),
    GetPage(
      name: '/newspaper',
      page: () => NewspaperView(),
      binding: NewspaperBinding(),
    ),
    GetPage(
      name: '/newspaper/create',
      page: () => CreateNewspaperView(),
      binding: CreateNewspaperBinding(),
    ),
    GetPage(
      name: '/transaction/create',
      page: () => CreateTransactionView(),
      binding: CreateTransactionBinding(),
    ),
    GetPage(
      name: '/transaction/detail',
      page: () => DetailTransactionView(),
      binding: DetailTransactionBinding(),
    ),
    GetPage(
      name: '/submit-payment',
      page: () => SubmitPaymentView(),
      binding: SubmitPaymentBinding(),
    ),
  ];
}
