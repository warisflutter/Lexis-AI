import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lexis_ai/app/modules/login/widgets/auth_field_label.dart';

import '../../login/widgets/auth_background.dart';
import '../../login/widgets/auth_card.dart';
import '../../login/widgets/auth_footer.dart';
import '../../login/widgets/login_gradient_button.dart';
import '../../login/widgets/login_text_field.dart';
import '../controllers/register_controller.dart';
import '../widgets/user_type_card.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF170022),

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,

        title: Row(
          children: const [
            Icon(
              Icons.gavel_rounded,
              color: Color(0xFFD9B3FF),
              size: 28,
            ),
            SizedBox(width: 8),
            Text(
              "LEXIS AI",
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 16,
              top: 8,
              bottom: 8,
            ),
            child: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.05),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Colors.white10,
                  ),
                ),
                child: const Center(
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],

        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Container(
            height: 1,
            color: Colors.white10,
          ),
        ),
      ),

      body: AuthBackground(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [

              const SizedBox(height: 20),

              const Text(
                "Create Account",
                style: TextStyle(
                  color: Color(0xFFFFE2C6),
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                "Join the elite network of modern legal professionals and clients.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white60,
                ),
              ),

              const SizedBox(height: 30),

              /// Role Cards
              Obx(
                    () => Row(
                  children: [
                    UserTypeCard(
                      selected:
                      controller.selectedRole.value == 0,
                      icon: Icons.balance,
                      title: "I am a\nLawyer",
                      onTap: () =>
                          controller.selectRole(0),
                    ),

                    const SizedBox(width: 12),

                    UserTypeCard(
                      selected:
                      controller.selectedRole.value == 1,
                      icon: Icons.person_outline,
                      title: "I am a Client",
                      onTap: () =>
                          controller.selectRole(1),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              /// Form
              AuthCard(
                child: Column(
                  children: [
                    AuthFieldLabel(title: 'FULL NAME'),

                    LoginTextField(
                      hintText: "Johnathan Doe, Esq.",
                      controller:
                      controller.fullNameController,
                    ),

                    const SizedBox(height: 15),

                    AuthFieldLabel(title: 'EMAIL ADDRESS'),
                    LoginTextField(
                      hintText: "j.doe@firm.com",
                      controller:
                      controller.emailController,
                    ),

                    const SizedBox(height: 15),

                    AuthFieldLabel(title: 'PHONE NUMBER'),
                    LoginTextField(
                      hintText: "+1 (555) 000-0000",
                      controller:
                      controller.phoneController,
                    ),

                    const SizedBox(height: 15),

                    AuthFieldLabel(title: 'PASSWORD'),
                    LoginTextField(
                      hintText: "********",
                      controller:
                      controller.passwordController,
                      obscureText: true,
                    ),

                    const SizedBox(height: 15),

                    AuthFieldLabel(title: 'CONFIRM PASSWORD'),
                    LoginTextField(
                      hintText: "********",
                      controller: controller.confirmPasswordController,
                      obscureText: true,
                    ),

                    const SizedBox(height: 10),

                    Obx(
                          () => CheckboxListTile(
                        value:
                        controller.agreeTerms.value,
                        onChanged:
                        controller.toggleTerms,
                        contentPadding:
                        EdgeInsets.zero,
                        title: const Text(
                          "I agree to Terms of Service and Privacy Policy",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),

                    LoginGradientButton(
                      text: "Create Account",
                      onTap: controller.register,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              const AuthFooter(),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}