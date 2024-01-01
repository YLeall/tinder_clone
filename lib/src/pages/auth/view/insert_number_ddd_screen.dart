import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InsertNumberDDDScreen extends StatelessWidget {
  const InsertNumberDDDScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_rounded,
            size: 25,
          ),
        ),
        // shadowColor: Colors.black,
        title: const TextField(
          decoration: InputDecoration(
            hintText: 'Busca',
            hintStyle: TextStyle(
              decoration: TextDecoration.none,
            ),
            border: InputBorder.none,
          ),
          style: TextStyle(
            decoration: TextDecoration.underline,
          ),
          cursorColor: Color(0xFFFE5048),
        ),
        shadowColor: Colors.black, // Added shadow
        elevation: 3,
        surfaceTintColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          right: 20,
          left: 20,
        ),
        child: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) {
            return Theme(
              data: ThemeData(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              child: ListTile(
                onTap: () {
                  debugPrint('Item $index');
                },
                title: Text(
                  'Item $index',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                  ),
                ),
                trailing: Text(
                  '$index',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
