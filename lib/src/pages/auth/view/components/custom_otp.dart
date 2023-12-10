import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomOtp extends StatelessWidget {
  const CustomOtp({super.key, required this.id});
  final int id;

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    final FocusNode focusNode = FocusNode();
    bool isFirstField = true;

    //
    controller.addListener(() {
      if (controller.text.isEmpty && !isFirstField && id != 0) {
        FocusScope.of(context).previousFocus();
        print('ola');
      } else if (controller.text.isNotEmpty && isFirstField) {
        isFirstField = false;
        print('uisd');
      }
      if (controller.text.length > 1) {
        controller.value = controller.value.copyWith(
          text: controller.text.substring(controller.text.length - 1),
          selection: const TextSelection.collapsed(offset: 1),
        );
      }
    });

    return Container(
      height: 68,
      width: 43,
      margin: const EdgeInsets.only(
        right: 10,
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.number,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        onChanged: (value) {
          if (value.length == 1 && id < 5) {
            FocusScope.of(context).nextFocus();
            print('oi');
          }
        },
        style: const TextStyle(
          color: Colors.black,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
