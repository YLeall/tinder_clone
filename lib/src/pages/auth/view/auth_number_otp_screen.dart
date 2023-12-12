import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tinder_clone/src/page_routes/app_pages.dart';
import 'package:tinder_clone/src/pages/auth/view/components/custom_otp.dart';
import 'package:tinder_clone/src/pages/commom_widgets/custom_button.dart';

class AuthNumberOtpScreen extends StatelessWidget {
   AuthNumberOtpScreen({super.key});
  final List<String> otpDigits = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          right: 24,
          left: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Meu código é',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Text(
                  '557399951610',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(15.0),
                    backgroundColor: Colors.white,
                    // elevation: 0,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        color: Color(0xFF828693),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: const Text(
                    'ENVIAR DE NOVO',
                    style: TextStyle(
                      color: Color(0xFF444142),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              width: 60,
              height: 100,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return CustomOtp(
                    id: index,
                  );
                },
                itemCount: 6,
              ),
            ),
            

            const SizedBox(
              height: 60,
            ),
            CustomButton(
              label: 'Continuar',
              onPressed: () {
                // debugPrint(otpDigits.join());
                Get.toNamed(PagesRoutes.insertEmailRoute);
              },
            ),
          ],
        ),
      ),
    );
  }
}
