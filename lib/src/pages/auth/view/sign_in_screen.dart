import 'package:flutter/material.dart';
import 'package:tinder_clone/src/page_routes/app_pages.dart';
import 'package:tinder_clone/src/pages/auth/view/components/custom_auth_button.dart';
import 'package:get/get.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFFE5048),
            Color(0xFFFD2C72),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: SizedBox(
            height: size.height,
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(
                      "assets/app_images/logo.png",
                    ),
                  ),
                  const Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  CustomAuthButton(
                    pathImage: 'assets/app_icons/icon_google.png',
                    title: 'ENTRAR COM O GOOGLE',
                    onPressed: () {},
                  ),
                  CustomAuthButton(
                    pathImage: 'assets/app_icons/icon_facebook.png',
                    title: 'ENTRAR COM FACEBOOK',
                    onPressed: () {},
                  ),
                  CustomAuthButton(
                    pathImage: 'assets/app_icons/icon_message.png',
                    title: 'ENTRAR COM O NÚMERO DE',
                    onPressed: () {
                      Get.toNamed(PagesRoutes.authNumberRoute,);
                    },
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'Problemas para fazer o login?',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
