import 'package:get/get.dart';

class ProfileSettingController extends GetxController {

  /// User Info
  RxString name = "Julian Vane".obs;

  RxString email = "law.ai@lexisai.legal".obs;

  /// Settings
  RxBool notificationEnabled = true.obs;

  RxBool biometricEnabled = true.obs;

  RxString language = "English".obs;

  void toggleNotification(bool value) {
    notificationEnabled.value = value;
  }

  void toggleBiometric(bool value) {
    biometricEnabled.value = value;
  }

  void changeLanguage(String value) {
    language.value = value;
  }

  void logout() {
    // TODO:
    // Firebase Logout
  }
}