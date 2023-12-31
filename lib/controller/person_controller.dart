import 'package:flutter_getx_study/model/person.dart';
import 'package:get/get.dart';

class PersonController extends GetxController {
  final person = Person().obs;

  void updateInfo() {
    person.update(
      (val) {
        val?.age++;
        val?.name = "coading chef";
      },
    );
  }
}
