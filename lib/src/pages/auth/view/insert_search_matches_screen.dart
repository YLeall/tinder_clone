import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tinder_clone/src/config/app_data.dart';
import 'package:tinder_clone/src/page_routes/app_pages.dart';
import 'package:tinder_clone/src/pages/auth/view/components/custom_matches_tile.dart';
import 'package:tinder_clone/src/pages/commom_widgets/custom_button.dart';

class InsertSearchMatchesScreen extends StatefulWidget {
  const InsertSearchMatchesScreen({super.key});

  @override
  State<InsertSearchMatchesScreen> createState() =>
      _InsertSearchMatchesScreenState();
}

class _InsertSearchMatchesScreenState extends State<InsertSearchMatchesScreen> {
  int selectedIndex = -1;
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
            size: 35,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Tô procurando...",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Responda para dar matches mais compatíveis.',
              style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  crossAxisCount: 3,
                ),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return CustomMatchesTile(
                    isSelected: selectedIndex == index,
                    title: listTitleMatches[index],
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  );
                },
              ),
            ),
            CustomButton(
              label: 'Seguinte',
              onPressed: () {
                Get.toNamed(PagesRoutes.insertMaximumDistance);
              },
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
