import 'package:get/get.dart';

import '../modules/add_case/bindings/add_case_binding.dart';
import '../modules/add_case/views/add_case_view.dart';
import '../modules/case_detail/bindings/case_detail_binding.dart';
import '../modules/case_detail/views/case_detail_view.dart';
import '../modules/chat/bindings/chat_binding.dart';
import '../modules/chat/views/chat_view.dart';
import '../modules/chat_detail/bindings/chat_detail_binding.dart';
import '../modules/chat_detail/views/chat_detail_view.dart';
import '../modules/dashboard/bindings/dashboard_binding.dart';
import '../modules/dashboard/views/dashboard_view.dart';
import '../modules/documents/bindings/documents_binding.dart';
import '../modules/documents/views/documents_view.dart';
import '../modules/find_lawyer/bindings/find_lawyer_binding.dart';
import '../modules/find_lawyer/views/find_lawyer_view.dart';
import '../modules/hire_lawyer/bindings/hire_lawyer_binding.dart';
import '../modules/hire_lawyer/views/hire_lawyer_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/lawyer_case/bindings/lawyer_case_binding.dart';
import '../modules/lawyer_case/views/lawyer_case_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/notification/bindings/notification_binding.dart';
import '../modules/notification/views/notification_view.dart';
import '../modules/onboarding1/bindings/onboarding1_binding.dart';
import '../modules/onboarding1/views/onboarding1_view.dart';
import '../modules/onboarding2/bindings/onboarding2_binding.dart';
import '../modules/onboarding2/views/onboarding2_view.dart';
import '../modules/onboarding3/bindings/onboarding3_binding.dart';
import '../modules/onboarding3/views/onboarding3_view.dart';
import '../modules/onboardingmain/bindings/onboardingmain_binding.dart';
import '../modules/onboardingmain/views/onboardingmain_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/profile_setting/bindings/profile_setting_binding.dart';
import '../modules/profile_setting/views/profile_setting_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ONBOARDINGMAIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING1,
      page: () => const Onboarding1View(),
      binding: Onboarding1Binding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING2,
      page: () => const Onboarding2View(),
      binding: Onboarding2Binding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING3,
      page: () => const Onboarding3View(),
      binding: Onboarding3Binding(),
    ),
    GetPage(
      name: _Paths.ONBOARDINGMAIN,
      page: () => const OnboardingMainView(),
      binding: OnboardingMainBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => const DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.FIND_LAWYER,
      page: () => const FindLawyerView(),
      binding: FindLawyerBinding(),
    ),
    GetPage(
      name: _Paths.LAWYER_CASE,
      page: () => const LawyerCaseView(),
      binding: LawyerCaseBinding(),
    ),
    GetPage(
      name: _Paths.ADD_CASE,
      page: () => const AddCaseView(),
      binding: AddCaseBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_SETTING,
      page: () => const ProfileSettingView(),
      binding: ProfileSettingBinding(),
      transition: Transition.rightToLeftWithFade,
      transitionDuration: const Duration(milliseconds: 350),
    ),
    GetPage(
      name: _Paths.HIRE_LAWYER,
      page: () => const HireLawyerView(),
      binding: HireLawyerBinding(),
      transition: Transition.rightToLeftWithFade,
      transitionDuration: const Duration(milliseconds: 350),
    ),
    GetPage(
      name: _Paths.CASE_DETAIL,
      page: () => const CaseDetailView(),
      binding: CaseDetailBinding(),
      transition: Transition.rightToLeftWithFade,
      transitionDuration: const Duration(milliseconds: 350),
    ),
    GetPage(
      name: _Paths.DOCUMENTS,
      page: () => const DocumentsView(),
      binding: DocumentsBinding(),
      transition: Transition.rightToLeftWithFade,
      transitionDuration: const Duration(milliseconds: 350),
    ),
    GetPage(
      name: _Paths.NOTIFICATION,
      page: () => const NotificationView(),
      binding: NotificationBinding(),
      transition: Transition.rightToLeftWithFade,
      transitionDuration: const Duration(milliseconds: 350),
    ),
    GetPage(
      name: _Paths.CHAT,
      page: () => const ChatView(),
      binding: ChatBinding(),
    ),
    GetPage(
      name: _Paths.CHAT_DETAIL,
      page: () => const ChatDetailView(),
      binding: ChatDetailBinding(),
      transition: Transition.rightToLeftWithFade,
      transitionDuration: const Duration(milliseconds: 350),
    ),
  ];
}
