import 'package:flutter/material.dart';
import 'package:flutter_getx_study/controller/person_controller.dart';
import 'package:get/get.dart';

class PersonalCard extends StatelessWidget {
  PersonalCard({super.key});

  final PersonController controller = Get.put(PersonController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xFF89dad0),
            ),
            child: Center(
              child: GetX<PersonController>(
                builder: (controller) {
                  return Text(
                    "Name ${controller.person().name}",
                    style: const TextStyle(fontSize: 20, color: Colors.white),
                  );
                },
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xFF89dad0),
            ),
            child: Center(
              child: Obx(
                () => Text(
                  "Age ${controller.person().age}",
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xFF89dad0),
            ),
            child: Center(
              child: GetX(
                init: PersonController(),
                builder: (controller) => Text(
                  "Age ${Get.find<PersonController>().person().age}",
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.updateInfo();
        },
        backgroundColor: Colors.red,
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
