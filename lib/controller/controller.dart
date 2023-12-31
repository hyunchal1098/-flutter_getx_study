import 'package:get/get.dart';

// GetX로 상태관리를 하기 위해서 GetxController 상속
class Controller extends GetxController {
  // dart 문법에서 private 변수는 _(underscore)를 붙히면 됨
  int _x = 0;
  int get x => _x;

  void increment() {
    _x++;
    update();
  }

  void init() {
    _x = 0;
    update();
  }
}
