import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';
import '../widgets/auth_footer.dart';
import '../widgets/guest_button.dart';
import '../widgets/login_gradient_button.dart';
import '../widgets/login_text_field.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF170022),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            child: Column(
              children: [
                const SizedBox(height: 5),

                /// Logo
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white10,
                      width: 1,
                    ),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.gavel_rounded,
                      color: Colors.white,
                      size: 38,
                    ),
                  ),
                ),

                const SizedBox(height: 12),

                /// App Name
                const Text(
                  "LEXIS AI",
                  style: TextStyle(
                    color: Color(0xFFD9B3FF),
                    fontSize: 38,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1,
                  ),
                ),

                const SizedBox(height: 1),

                const Text(
                  "INTELLECTUAL LUXURY IN LAW",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 10,
                    letterSpacing: 3,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const SizedBox(height: 20),

                /// Login Card
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color(0xFF251036),
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(
                      color: Colors.white10,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Institutional Email",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      const SizedBox(height: 8),

                      LoginTextField(
                        hintText: "attorney@lexis.ai",
                        controller: controller.emailController,
                      ),

                      const SizedBox(height: 18),

                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Security Passkey",
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "Recover?",
                            style: TextStyle(
                              color: Colors.white54,
                              fontSize: 11,
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 8),

                      Obx(
                            () => LoginTextField(
                          hintText: "••••••••••",
                          controller:
                          controller.passwordController,
                          obscureText:
                          controller.isPasswordHidden.value,
                          suffixIcon: IconButton(
                            onPressed: controller
                                .togglePasswordVisibility,
                            icon: Icon(
                              controller.isPasswordHidden.value
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 28),

                      LoginGradientButton(
                        text: "Login",
                        onTap: () {
                          Get.toNamed(Routes.REGISTER);
                        },
                      ),
                      const SizedBox(height: 18),

                      const Row(
                        children: [

                          Expanded(
                            child: Divider(
                              color: Colors.white24,
                              thickness: 1,
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            child: Text(
                              "OR",
                              style: TextStyle(
                                color: Colors.white54,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),

                          Expanded(
                            child: Divider(
                              color: Colors.white24,
                              thickness: 1,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 18),

                      GuestButton(
                        onTap: controller.continueAsGuest,
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 22),

                /// Signup
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account? ",
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.REGISTER);
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),                  ],
                ),

                const SizedBox(height: 25),

                const AuthFooter(),

                const SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}