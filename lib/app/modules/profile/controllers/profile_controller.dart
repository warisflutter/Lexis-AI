import 'package:get/get.dart';

class ProfileController extends GetxController {

  /// Loading
  RxBool isLoading = false.obs;

  /// User Information
  RxString name = "Julian Vane".obs;

  RxString role = "CLIENT".obs;

  RxString email = "julianvane@gmail.com".obs;

  RxString phone = "+1 234 567 890".obs;

  RxString profileImage =
      "https://randomuser.me/api/portraits/men/32.jpg".obs;

  @override
  void onInit() {
    super.onInit();
    loadProfile();
  }

  void loadProfile() {
    isLoading.value = false;

    // Future Firebase/Firestore data load here
    //
    // Example:
    // name.value = userModel.name;
    // role.value = userModel.role;
    // profileImage.value = userModel.image;
  }

  /// Update profile image
  void updateProfileImage(String imageUrl) {
    profileImage.value = imageUrl;
  }

  /// Update user name
  void updateName(String newName) {
    name.value = newName;
  }

  /// Update role
  void updateRole(String newRole) {
    role.value = newRole;
  }

  /// Logout
  void logout() {
    // TODO:
    // FirebaseAuth.instance.signOut();
    // Get.offAllNamed(Routes.LOGIN);
  }
}